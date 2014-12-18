//
//  ADDoctor.m
//  Lesson10_HW
//
//  Created by A D on 12/18/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADDoctor.h"

@implementation ADDoctor

@synthesize salary = _salary;
@synthesize averagePrice = _averagePrice;
@synthesize name = _name;


#pragma mark - Initialization -
- (id)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(salaryChanged:)
                                                     name:ADGovermentSalaryChangedNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(averagePriceChanged:)
                                                     name:ADGovermentAveragePriceChangedNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(wentToBackground)
                                                     name:UIApplicationDidEnterBackgroundNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(wentToForeground)
                                                     name:UIApplicationWillEnterForegroundNotification
                                                   object:nil];
        
        
        
        
        _salary = 100.f;
        _averagePrice = 5.f;
        
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

-(void) salaryChanged:(NSNotification *) notification{
    
    NSNumber *value = [notification.userInfo objectForKey:ADGovermentSalaryChangedUserInfoKey];
    CGFloat salary = [value floatValue];
    
    NSLog(@"%1.1f-%1.1f", self.salary, salary);
    
    if(salary < self.salary){
        NSLog(@"%@ - Where is my scalpel!", self.name);
    }else{
        NSLog(@"%@ - Finaly they see all my hard work", self.name);
    }
    
    self.salary = salary;
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
