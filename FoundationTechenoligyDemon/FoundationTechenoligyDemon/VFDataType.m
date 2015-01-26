//
//  VFDataType.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/26/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFDataType.h"

@interface VFDataType ()

@end

@implementation VFDataType

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    [array addObject:[NSNumber numberWithInt:88]];
    [array addObject:@"adf"];
    
    NSLog(@"%@", array);
    
    NSString *str = @"sdf";
    NSLog(@"%d", [str intValue]);
}

@end
