//
//  VFFoundationDemon.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 25/5/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFFoundationDemon.h"

@interface VFFoundationDemon ()
{
    UIButton *bt;
    IBOutlet UITextView *tv;
}

@end

@implementation VFFoundationDemon

- (void)viewDidLoad {
    [super viewDidLoad];
    
    bt = [[UIButton alloc] initWithFrame:CGRectMake(40, 40, 120, 40)];
    bt.backgroundColor = [UIColor redColor];
    bt.titleLabel.text = @"hit me!";
    bt.titleLabel.textColor = [UIColor grayColor];
    [bt addTarget:self action:@selector(onBtClick:) forControlEvents:UIControlEventTouchUpInside];
    
    tv = [[UITextView alloc] initWithFrame:CGRectMake(40, 80, 120, 120)];
    //    tv.textColor = [UIColor yellowColor];
    
    [self.view addSubview:bt];
    [self.view addSubview:tv];
}

/**
 *  @method initDictionary
 *  @class VFAppDelegate
 *
 *  @param sender <#sender description#>
 */
-(void)onBtClick: (id)sender
{
    NSString *filePath = [NSString stringWithFormat:@"%@%@", [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject], @"/text.txt"];
    NSLog(@"%@", filePath);
    [self saveString:@"test string, hahahahaha!" toFile:filePath];
}

#pragma mark -
#pragma mark String & MutableString
- (void)saveString:(NSString *)savedString  toFile:(NSString *)filePath
{
    if (savedString != nil && ![savedString isEqualToString:@""]) {
        NSError *error;
        [savedString writeToFile:filePath atomically:NO encoding:NSStringEncodingConversionAllowLossy error:&error];
    }
}

@end
