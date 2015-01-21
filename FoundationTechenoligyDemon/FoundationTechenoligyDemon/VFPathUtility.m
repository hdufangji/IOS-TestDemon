//
//  VFPathUtility.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/21/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFPathUtility.h"

@implementation VFPathUtility

+ (NSString *)CreateFileInDocumentPathWithFileName:(NSString *)fileName
{
    NSString *documents = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    if (fileName == nil || [fileName isEqualToString:@""]) {
        return documents;
    }else{
        NSString *pathName = [documents stringByAppendingString:fileName];
        return pathName;
    }
}

@end
