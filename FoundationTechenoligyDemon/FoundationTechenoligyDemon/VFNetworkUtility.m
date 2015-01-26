//
//  VFNetworkUtility.m
//  FoundationTechenoligyDemon
//
//  Created by vic on 1/25/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFNetworkUtility.h"

@implementation VFNetworkUtility

+ (NSData *)downloadImageDatafrom: (NSURL *)url
{
    NSData *data = nil;
    NSError *errorMsg = nil;
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:&errorMsg];
    if (data == nil) {
        return nil;
    }else{
        return data;
    }
}

@end
