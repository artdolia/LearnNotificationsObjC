//
//  ADFakeAppDelegate.m
//  Lesson10_HW
//
//  Created by A D on 12/18/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADFakeAppDelegate.h"

@implementation ADFakeAppDelegate

- (id)init
{
    self = [super init];
    if (self) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didFinishLaunch) name:UIApplicationDidFinishLaunchingNotification object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(willResignActive) name:UIApplicationWillResignActiveNotification object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didEnterBackground) name:UIApplicationDidEnterBackgroundNotification object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(willEnterForeground) name:UIApplicationWillEnterForegroundNotification object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dedBecomeActive) name:UIApplicationDidBecomeActiveNotification object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(willTerminate) name:UIApplicationWillTerminateNotification object:nil];
        
    }
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


#pragma  mark - Notifications -

-(void) didFinishLaunch{
    NSLog(@"Fake - didFinishLaunch");
}

-(void) willResignActive{
    NSLog(@"Fake - willResignActive");
}

-(void) didEnterBackground{
    NSLog(@"Fake - didEnterBackground");
}

-(void) willEnterForeground{
    NSLog(@"Fake - willEnterForeground");
}

-(void) dedBecomeActive{
    NSLog(@"Fake - dedBecomeActive");
}

-(void) willTerminate{
    NSLog(@"Fake - willTerminate");
}

@end
