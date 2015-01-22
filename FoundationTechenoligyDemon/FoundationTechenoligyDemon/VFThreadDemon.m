//
//  VFThreadDemon.m
//  FoundationTechenoligyDemon
//
//  Created by vic on 1/22/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFThreadDemon.h"

@interface VFThreadDemon ()
{
    UIImageView *iv;
}

@end

@implementation VFThreadDemon

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    iv = [[UIImageView alloc] init];
    
    [self getImage];
    
    [self.view addSubview:iv];
}

- (void)getImage
{
    NSURL *url = [NSURL URLWithString:@"http://a.hiphotos.baidu.com/image/pic/item/e4dde71190ef76c687a0a6509e16fdfaaf51675e.jpg"];
    NSThread *downloadThread = [[NSThread alloc] initWithTarget:self selector:@selector(downloadImage:) object:url];
    [downloadThread start];
}

- (void)downloadImage:(NSURL *)url
{
    NSData *data = [[NSData alloc] initWithContentsOfURL:url];

    UIImage *image = [[UIImage alloc] initWithData:data];

    [self performSelectorOnMainThread:@selector(setImage:) withObject:image waitUntilDone:YES];
}

- (void)setImage:(UIImage *)image
{
    iv.image = image;
}

@end
