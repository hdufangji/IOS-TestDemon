//
//  VFplistDemon.m
//  FoundationTechenoligyDemon
//
//  Created by vic on 1/20/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFplistDemon.h"

@interface VFplistDemon ()
{
    NSMutableDictionary *data;
}

@end

@implementation VFplistDemon

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"MyPList" ofType:@"plist"];
    data = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    NSLog(@"%@", data);
    
    [self addData2PList];
}

- (void)addData2PList
{
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);

    NSString *docPath = [path objectAtIndex:0];
    
    NSString *plistPath = [docPath stringByAppendingString:@"test.plist"];
    
    [data setObject:@"haha" forKey:@"test"];
    [data writeToFile:plistPath atomically:YES];
    
    NSLog(@"%@", [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath]);
}

@end
