//
//  VFOperationDemon.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/23/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFOperationDemon.h"

@interface VFOperationDemon ()
{
    UIImageView *iv;
}

@end

@implementation VFOperationDemon

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    
    [self getImage];
    
    [self.view addSubview:iv];
}

- (void)getImage
{
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    
    NSURL *url = [NSURL URLWithString:@"http://a.hiphotos.baidu.com/image/pic/item/e4dde71190ef76c687a0a6509e16fdfaaf51675e.jpg"];
    NSInvocationOperation *invocationOper = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(downloadImage:) object:url];
    
    [queue addOperation:invocationOper];
}

- (void)downloadImage: (NSURL *)url
{
    NSData *data = [[NSData alloc] initWithContentsOfURL:url];
    
    [self performSelectorOnMainThread:@selector(setImage:) withObject:data waitUntilDone:YES];
}

- (void)setImage: (NSData *)data
{
    iv.image = [[UIImage alloc] initWithData:data];
}

@end
