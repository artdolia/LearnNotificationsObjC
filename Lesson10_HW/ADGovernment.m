//
//  ADGovernment.m
//  Lesson10_HW
//
//  Created by A D on 12/18/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADGovernment.h"

NSString *const ADGovermentTaxLevelChangedNotification = @"ADGovermentTaxLevelChangedNotification";
NSString *const ADGovermentSalaryChangedNotification = @"ADGovermentSalaryChangedNotification";
NSString *const ADGovermentPensionChangedNotification = @"ADGovermentPensionChangedNotification";
NSString *const ADGovermentAveragePriceChangedNotification = @"ADGovermentAveragePriceChangedNotification";

NSString *const ADGovermentTaxLevelChangedUserInfoKey = @"ADGovermentTaxLevelChangedUserInfoKey";
NSString *const ADGovermentSalaryChangedUserInfoKey = @"ADGovermentSalaryChangedUserInfoKey";
NSString *const ADGovermentPensionChangedUserInfoKey = @"ADGovermentPensionChangedUserInfoKey";
NSString *const ADGovermentAveragePriceChangedUserInfoKey = @"ADGovermentAveragePriceChangedUserInfoKey";

@implementation ADGovernment

- (id)init
{
    self = [super init];
    if (self) {
        _taxLevel = 10.f;
        _salary = 100.f;
        _pension = 80.f;
        _averagePrice = 5.f;
    }
    return self;
}

-(void) setTaxLevel:(CGFloat)taxLevel{
    
    _taxLevel = taxLevel;
    
    NSNumber *number = [NSNumber numberWithFloat:taxLevel];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:number forKey:ADGovermentTaxLevelChangedUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ADGovermentTaxLevelChangedNotification object:nil userInfo:dictionary];
    
}

-(void) setAveragePrice:(CGFloat)averagePrice{
    
    _averagePrice = averagePrice;
    
    NSNumber *number = [NSNumber numberWithFloat:averagePrice];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:number forKey:ADGovermentAveragePriceChangedUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ADGovermentAveragePriceChangedNotification object:nil userInfo:dictionary];
    
}

-(void) setSalary:(CGFloat)salary{
    
    _salary = salary;
    
    NSNumber *number = [NSNumber numberWithFloat:salary];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:number forKey:ADGovermentSalaryChangedUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ADGovermentSalaryChangedNotification object:nil userInfo:dictionary];
    
}

-(void) setPension:(CGFloat)pension{
    
    _pension = pension;
    
    NSNumber *number = [NSNumber numberWithFloat:pension];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:number forKey:ADGovermentPensionChangedUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ADGovermentPensionChangedNotification object:nil userInfo:dictionary];
    
}

@end
