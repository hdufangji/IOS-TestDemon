//
//  VFStringUtility.m
//  FoundationTechenoligyDemon
//
//  Created by vic on 2/1/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFStringUtility.h"

@implementation VFStringUtility

+(BOOL) NSStringIsValidEmail:(NSString *)checkString
{
    BOOL stricterFilter = NO;   //if we need a strict email address checking, please change the value to YES.
    NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
    NSString *laxString = @".+@([A-Za-z0-9]+\\.)+[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:checkString];
}

@end
