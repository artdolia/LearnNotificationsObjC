//
//  ADAppDelegate.m
//  Lesson10_HW
//
//  Created by A D on 12/18/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADAppDelegate.h"
#import "ADGovernment.h"
#import "ADDoctor.h"
#import "ADPensioner.h"
#import "ADBusinessman.h"
#import "ADFakeAppDelegate.h"

@interface ADAppDelegate()

@property (strong, nonatomic) ADGovernment *government;
@property (strong, nonatomic) ADDoctor *doctor;
@property (strong, nonatomic) ADPensioner *pensioner;
@property (strong, nonatomic) ADBusinessman *businessman;
@property (strong, nonatomic) ADFakeAppDelegate * fakeDelegate;

@end



@implementation ADAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    NSLog(@"AppDelegate - application didFinishLaunchingWithOptions");
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    self.fakeDelegate = [[ADFakeAppDelegate alloc] init];
    
    /*
    self.government = [[ADGovernment alloc] init];

    self.doctor = [[ADDoctor alloc] init];
    self.doctor.name = @"Doctor";
    
    self.pensioner = [[ADPensioner alloc] init];
    self.pensioner.name = @"Pensioner";
    
    self.businessman = [[ADBusinessman alloc] init];
    self.businessman.name = @"Businessman";

    
    self.government.taxLevel = 11.f;
    self.government.salary = 110.f;
    self.government.pension = 100.f;
    self.government.averagePrice = 8.f;
    */
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"AppDelegate - applicationWillResignActive");

    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"AppDelegate - applicationDidEnterBackground");
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"AppDelegate - applicationWillEnterForeground");
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"AppDelegate - applicationDidBecomeActive");
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"AppDelegate - applicationWillTerminate");
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
