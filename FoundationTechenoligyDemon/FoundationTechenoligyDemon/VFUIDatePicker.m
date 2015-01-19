//
//  VFUIDatePicker.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/19/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFUIDatePicker.h"

@interface VFUIDatePicker ()
{
    UIDatePicker *datePicker;
}

@end

@implementation VFUIDatePicker

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initDatePicker];
}

- (void)initDatePicker
{
    datePicker = [[UIDatePicker allocWithZone:NSDefaultMallocZone()] initWithFrame:CGRectMake(0, 0, 320, 240)];
    datePicker.datePickerMode = UIDatePickerModeDateAndTime;
    datePicker.minuteInterval = 5;
    
    NSDate *minDate = [[NSDate alloc] initWithTimeIntervalSinceNow:0];
    NSDate *maxDate = [[NSDate alloc] initWithTimeIntervalSinceNow:24*60*60*365];
    
    datePicker.minimumDate = minDate;
    datePicker.maximumDate = maxDate;
    
    datePicker.date = minDate;
    [datePicker addTarget:self action:@selector(onDatePickerSetted:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:datePicker];
}

- (void)onDatePickerSetted:(id)sender
{
    UIDatePicker *picker = (UIDatePicker *)sender;
    NSLog(@"value is %@", picker.date );
}

@end
