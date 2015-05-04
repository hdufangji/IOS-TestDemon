//
//  VFBlockDemon.m
//  FoundationTechenoligyDemon
//
//  Created by vic on 1/25/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFBlockDemon.h"

@interface VFBlockDemon ()

@end

@implementation VFBlockDemon

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int (^getSum)(int, int) = ^(int a, int b){
        return a + b;
    };
    
    NSLog(@"%d", getSum(10, 20));
    
    NSString* (^appendString)(NSString *, NSString *) = ^(NSString* c, NSString* d){
        return [NSString stringWithFormat:@"%@, %@", c, d];
    };
    
    NSLog(@"%@", appendString(@"abc", @"def"));
}

@end
