//
//  ADBusinessman.h
//  Lesson10_HW
//
//  Created by A D on 12/18/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ADGovernment.h"

@interface ADBusinessman : NSObject

@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat averagePrice;
@property (strong, nonatomic) NSString *name;

@end
