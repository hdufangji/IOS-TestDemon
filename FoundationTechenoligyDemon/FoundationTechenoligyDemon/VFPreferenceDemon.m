//
//  VFPreferenceDemon.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/21/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFPreferenceDemon.h"

@interface VFPreferenceDemon ()
{
    NSUserDefaults *defaults;
}

@end

@implementation VFPreferenceDemon

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self savePreference];
    
    [self readPreference];
}

- (void)savePreference
{
    defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:@"fangji" forKey:@"name"];
    [defaults setInteger:28 forKey:@"age"];
    [defaults setBool:YES forKey:@"isMerraged"];
}

- (void)readPreference
{
    NSLog(@"%@", [defaults stringForKey:@"name"]);
    NSLog(@"%d", [defaults integerForKey:@"age"]);
    NSLog(@"%d", [defaults boolForKey:@"isMerraged"]);
}

@end
