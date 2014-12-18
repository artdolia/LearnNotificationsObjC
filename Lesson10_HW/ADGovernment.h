//
//  ADGovernment.h
//  Lesson10_HW
//
//  Created by A D on 12/18/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const ADGovermentTaxLevelChangedNotification;
extern NSString *const ADGovermentSalaryChangedNotification;
extern NSString *const ADGovermentPensionChangedNotification;
extern NSString *const ADGovermentAveragePriceChangedNotification;

extern NSString *const ADGovermentTaxLevelChangedUserInfoKey;
extern NSString *const ADGovermentSalaryChangedUserInfoKey;
extern NSString *const ADGovermentPensionChangedUserInfoKey;
extern NSString *const ADGovermentAveragePriceChangedUserInfoKey;



@interface ADGovernment : NSObject

@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat averagePrice;

@end
