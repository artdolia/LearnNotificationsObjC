//
//  ADBusinessman.m
//  Lesson10_HW
//
//  Created by A D on 12/18/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADBusinessman.h"

@implementation ADBusinessman

@synthesize taxLevel = _taxLevel;
@synthesize averagePrice = _averagePrice;
@synthesize name = _name;

#pragma mark - Initialization -

- (id)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(taxLevelChanged:)
                                                     name:ADGovermentTaxLevelChangedNotification object:nil];
        
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
        
        self.taxLevel = 5.f;
        self.averagePrice = 15.f;
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


#pragma  mark - Notifications -

-(void) taxLevelChanged: (NSNotification*) notification{
    
    NSNumber *value = [notification.userInfo objectForKey:ADGovermentTaxLevelChangedUserInfoKey];
    
    CGFloat taxLevel = [value floatValue];
    
    NSLog(@"%1.1f-%1.1f", self.taxLevel, taxLevel);
    
    if(taxLevel < self.taxLevel){
        NSLog(@"%@ - I can breath, a little though", self.name);
        
    }else{
        NSLog(@"%@ - Do you want my profit, HA?!", self.name);
    }
    
    self.taxLevel = taxLevel;
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
