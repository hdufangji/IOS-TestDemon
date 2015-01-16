//
//  VFButtonDemonViewController.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/16/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFButtonDemonViewController.h"

@interface VFButtonDemonViewController ()
{
    UIButton *bt;
}

@end

@implementation VFButtonDemonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initButton];
    // Do any additional setup after loading the view.
}

- (void) initButton
{
//    1. init with rect
//    bt = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    
//    2. init with default type
    bt = [UIButton buttonWithType:UIButtonTypeCustom];
    
//    3. add image background
    [bt setImage:[UIImage imageNamed:@"calllog.png"] forState:UIControlStateNormal];
    [bt setTitle:@"hitme" forState:UIControlStateNormal];
    [bt setFrame:CGRectMake(20, 20, 120, 60)];
    
    [bt addTarget:self action:@selector(onButtonClicked:) forControlEvents:UIControlEventAllTouchEvents];
    //        [bt setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:bt];
}

- (void) onButtonClicked: (UIButton *)bt
{
    NSLog(@"onButtonClicked onButtonClicked onButtonClicked!!!!!!!!!!!!");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
