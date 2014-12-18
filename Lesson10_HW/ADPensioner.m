//
//  ADPensioner.m
//  Lesson10_HW
//
//  Created by A D on 12/18/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADPensioner.h"

@implementation ADPensioner

@synthesize pension = _pension;
@synthesize averagePrice = _averagePrice;
@synthesize name = _name;


#pragma mark - Initialization -

- (id)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(pensionChanged:)
                                                     name:ADGovermentPensionChangedNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(averagePriceChanged:)
                                                     name:ADGovermentAveragePriceChangedNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(wentToBackground)
                                                     name:UIApplicationDidEnterBackgroundNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(wentToForeground)
                                                     name:UIApplicationWillEnterForegroundNotification
                                                   object:nil];
        self.pension = 90.f;
        self.averagePrice =3.f;
    }
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Suspend -

-(void) wentToBackground{
    
    NSLog(@"%@ - I am sleeping", self.name);
}

-(void) wentToForeground{
    
    NSLog(@"%@ - I just woke up!", self.name);
}

#pragma mark - Notifications -

-(void) pensionChanged:(NSNotification *) notification{
    
    NSNumber *value = [notification.userInfo objectForKey:ADGovermentPensionChangedUserInfoKey];
    CGFloat pension = [value floatValue];
    
    NSLog(@"%1.1f-%1.1f", self.pension, pension);
    
    if(pension < self.pension){
        NSLog(@"%@ - my teeth can finaly rest on the shelf", self.name);
    }else{
        NSLog(@"%@ - leave me alone, and bring me some tabacco", self.name);
    }
    
    self.pension = pension;
}


-(void) averagePriceChanged:(NSNotification *) notification{
    
    NSNumber *value = [notification.userInfo objectForKey:ADGovermentAveragePriceChangedUserInfoKey];
    
    CGFloat averagePrice = [value floatValue];
    
    NSLog(@"%1.1f-%1.1f", self.averagePrice, averagePrice);
    
    if(averagePrice > self.averagePrice){
        NSLog(@"%@ - Need to buy sugar and powder soon!", self.name);
    }else{
        NSLog(@"%@ - Prices are not growing, may save some money.", self.name);
    }
    
    self.averagePrice = averagePrice;
}


@end
