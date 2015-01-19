//
//  VFUIPickerView.m
//  FoundationTechenoligyDemon
//
//  Created by vic on 1/19/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFUIPickerView.h"

@interface VFUIPickerView ()
{
    UIPickerView *pickerView;
}

@end

@implementation VFUIPickerView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initPickerView];
}

- (void)initPickerView
{
    pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 0, 320, 240)];
    [pickerView setDataSource:self];
    pickerView.delegate = self;
    
    [self.view addSubview:pickerView];
}

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 3;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return @"test";
}

@end
