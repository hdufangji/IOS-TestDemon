//
//  VFCollectionDemon.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 20/5/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFCollectionDemon.h"

extern NSString *version1;

@interface VFCollectionDemon ()
{
    UIButton *bt;
    IBOutlet UITextView *tv;
}

@end

@implementation VFCollectionDemon

- (void)viewDidLoad {
    [super viewDidLoad];
    
    bt = [[UIButton alloc] initWithFrame:CGRectMake(40, 40, 120, 40)];
    bt.backgroundColor = [UIColor redColor];
    bt.titleLabel.text = @"hit me!";
    bt.titleLabel.textColor = [UIColor grayColor];
    [bt addTarget:self action:@selector(onBtClick:) forControlEvents:UIControlEventTouchUpInside];
    
    tv = [[UITextView alloc] initWithFrame:CGRectMake(40, 80, 120, 120)];
    //    tv.textColor = [UIColor yellowColor];
    
    NSLog(version1);
    
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
        [self saveData2Plist];
    //    [self initDictionary];
    [self initMutableDictionary];
    //    [self initArray];
}

//TODO: add more code to test
-(void)saveData2Plist
{
    //    NSMutableDictionary *dic = [NSMutableDictionary alloc] initwit
    //    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    //
    //    [dic setObject:@"victor" forKey:@"name"];
    //    [dic setValue:@"28" forKey:@"age"];
    //    [dic setValue:@"male" forKey:@"genge"];
    //
    //
    //
    //    [dic writeToFile:@"~/Library/My.plist" atomically:YES];
    
    
    self->tv.text = [[UIDevice currentDevice] name];
}

#pragma mark - Dictionary
- (void)initDictionary
{
    NSDictionary *dic;
    
    //1
    //    dic = [NSDictionary dictionaryWithContentsOfFile:@""];
    
    //2
    //    dic = [NSDictionary dictionaryWithObject:@"victor1" forKey:@"name"];
    
    //3
    dic = [NSDictionary dictionaryWithObjects:[[NSArray alloc] initWithObjects:@"victor2", @"28", @"male", nil] forKeys:[[NSArray alloc] initWithObjects:@"name", @"age", @"gender", nil]];
    
    //4
    //    dic = [NSDictionary dictionaryWithObjectsAndKeys:@"victor3", @"name", @"28", @"age", nil];
    
    for (NSString *key in [dic keyEnumerator]) {
        NSLog(@"%@", key);
        NSLog(@"%@", [dic objectForKey:key]);
    }
    
    NSLog(@"%d", [dic count]);
    self->tv.text = dic.description;
}

- (void)initMutableDictionary
{
    NSMutableDictionary *mDic;
    
    mDic = [NSMutableDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"1", @"2", @"3", @"4", nil] forKeys:[NSArray arrayWithObjects:@"First", @"Second", @"Third", @"Forth", nil]];
    
    for (NSString *key in [mDic keyEnumerator]) {
        NSLog(@"%@", key);
        NSLog(@"%@", [mDic objectForKey:key]);
    }
    
    NSLog(@"%d", [mDic count]);
    self->tv.text = mDic.description;
}

#pragma mark - Array
- (void)initArray
{
    NSArray *array = [NSArray arrayWithObjects:@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", nil];
    
    for (NSString *value in array) {
        NSLog(@"%@", value);
    }
    
    NSLog(@"array size is %d", [array count]);
    
    self->tv.text = [array description];
}

- (void)initMutableArray
{
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", nil];
    
    for (NSString *value in array) {
        NSLog(@"%@", value);
    }
    
    NSLog(@"array size is %d", [array count]);
    
    self->tv.text = [array description];
}


@end
