//
//  VFArrayDemon.m
//  FoundationTechenoligyDemon
//
//  Created by vic on 3/23/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFArrayDemon.h"

@interface VFArrayDemon ()
{
    UIButton *bt;
    IBOutlet UITextView *tv;
}

@end

@implementation VFArrayDemon

- (void)viewDidLoad {
    [super viewDidLoad];
    
    bt = [[UIButton alloc] initWithFrame:CGRectMake(40, 40, 120, 40)];
    bt.backgroundColor = [UIColor redColor];
    bt.titleLabel.text = @"hit me!";
    bt.titleLabel.textColor = [UIColor grayColor];
    [bt addTarget:self action:@selector(onBtClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:bt];
}

-(void)onBtClick: (id)sender
{
    [self saveData2Plist];
}

-(void)saveData2Plist
{
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
