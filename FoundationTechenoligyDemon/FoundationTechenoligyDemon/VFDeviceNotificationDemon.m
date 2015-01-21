//
//  VFDeviceNotificationDemon.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/21/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFDeviceNotificationDemon.h"

@interface VFDeviceNotificationDemon ()
{
    NSNotificationCenter *noCenter;
    NSNotification *notification;
}

@end

@implementation VFDeviceNotificationDemon

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    notification = [NSNotification notificationWithName:nil object:[UIDevice currentDevice]];
    noCenter = [NSNotificationCenter defaultCenter];
    [noCenter addObserver:self selector:@selector(onDeviceNotificationRecieve:) name:nil object:[UIDevice currentDevice]];
}

- (void)dealloc
{
    [noCenter removeObserver:self name:nil object:[UIDevice currentDevice]];
}

- (void)onDeviceNotificationRecieve:(NSNotification *)notification
{
    NSLog(@"-----LOG BEGIN----");
    NSLog(@"%@", notification);
    NSLog(@"-----LOG END----");
}

@end
