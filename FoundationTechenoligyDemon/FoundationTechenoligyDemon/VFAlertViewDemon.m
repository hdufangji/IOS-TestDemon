//
//  VFAlertViewDemon.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/19/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFAlertViewDemon.h"

@interface VFAlertViewDemon ()
{
    UIAlertView *av;
}

@end

@implementation VFAlertViewDemon

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initAlertView];
}

- (void)initAlertView
{
    av = [[UIAlertView alloc] initWithTitle:@"alert" message:@"it's just a test" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
 
    [av show];
}

// Called when a button is clicked. The view will be automatically dismissed after this call returns
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    [av dismissWithClickedButtonIndex:buttonIndex animated:YES];
}

@end
