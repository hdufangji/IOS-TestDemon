//
//  VFLabelTextfieldDemon.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/19/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFLabelTextfieldDemon.h"

@interface VFLabelTextfieldDemon ()
{
    UILabel *label;
    UITextField *tf;
}

@end

@implementation VFLabelTextfieldDemon

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initLabel];
    
    [self initTextField];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initLabel
{
    label = [[UILabel alloc] initWithFrame:CGRectMake(40, 40, 300, 20)];
    
    label.text = @"hit me mememeemememememememememememememememeem";
    label.textColor = [UIColor redColor];
    label.lineBreakMode = UILineBreakModeMiddleTruncation;
//    label.shadowColor = [UIColor blueColor];
    label.highlightedTextColor = [UIColor blueColor];
    label.highlighted = YES;
    
    [self.view addSubview:label];
}

- (void)initTextField
{
    tf = [[UITextField alloc] initWithFrame:CGRectMake(20, 120, 300, 20)];
    [tf setBorderStyle:UITextBorderStyleRoundedRect];
    tf.placeholder = @"please enter name";
    tf.autocorrectionType = UITextAutocorrectionTypeNo;
    tf.delegate = self;

    [self.view addSubview:tf];
}

#pragma mark - TextField delegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [tf resignFirstResponder];
    return YES;
}// called when 'return' key pressed. return NO to ignore.

@end
