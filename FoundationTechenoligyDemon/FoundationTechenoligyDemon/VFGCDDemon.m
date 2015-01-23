//
//  VFGCDDemon.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/23/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFGCDDemon.h"

@interface VFGCDDemon ()
{
    UIImageView *iv;
}

@end

@implementation VFGCDDemon

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
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData *data = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://a.hiphotos.baidu.com/image/pic/item/e4dde71190ef76c687a0a6509e16fdfaaf51675e.jpg"]];
        
        UIImage *image = [[UIImage alloc] initWithData:data];
        
        if (data != nil) {
            dispatch_async(dispatch_get_main_queue(), ^{
                iv.image = image;
            });
        }else{
            NSLog(@"下载失败!");
        }
    });
}


@end
