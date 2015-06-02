//
//  VFAppDelegate.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/16/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFAppDelegate.h"



/**
 *  @description test extern variable.
 *  this variable is invoked in @class VFCollectionDemon @method viewDidLoad
 */
extern NSString *version1 = @"aa";

@implementation VFAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"didFinishLaunchingWithOptions");
    // Override point for customization after application launch.
    NSString *string1 = @"123456789aaa";
    NSString *string2 = @"aaa123456789";
    
    if ([string1 hasPrefix:@"aaa"]) {
        NSLog(@"string 1 has prefix aaa");
    }
    
    if ([string2 hasPrefix:@"aaa"]) {
        NSLog(@"string 2 has prefix aaa");
    }
    
    NSMutableString *string3 = [[NSMutableString alloc] init];
    [string3 appendString:@"111222333444555666777\",\n"];
    [string3 replaceCharactersInRange:NSMakeRange([string3 length] - 2, 2) withString:@"\n"];
    NSLog(@"%@", string3);
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"applicationWillResignActive");
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"applicationDidEnterBackground");
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"applicationWillEnterForeground");
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"applicationDidBecomeActive");
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"applicationWillTerminate");
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
