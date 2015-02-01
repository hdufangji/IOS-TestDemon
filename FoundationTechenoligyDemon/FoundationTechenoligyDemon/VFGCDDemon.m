//
//  VFGCDDemon.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/23/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFGCDDemon.h"
#import "VFNetworkUtility.h"
#import "MBProgressHUD.h"

@interface VFGCDDemon ()
{
    UIImageView *iv;
    UIButton *bt;
}

@end

@implementation VFGCDDemon

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    bt = [[UIButton alloc] initWithFrame:CGRectMake(40, 40, 120, 40)];
    bt.titleLabel.text = @"hit me!";
    bt.backgroundColor = [UIColor redColor];
    [bt addTarget:self action:@selector(onBtClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:iv];
    [self.view addSubview:bt];
}

- (void)onBtClicked: (id)sender
{
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    [self getImage];
}

- (void)getImage
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData *data = [VFNetworkUtility downloadImageDatafrom:[NSURL URLWithString:@"http://image.tianjimedia.com/uploadImages/2014/100/30/1UY90W5R7I81_680x500.jpg"]];
        
        if (data != nil) {
            UIImage *image = [[UIImage alloc] initWithData:data];
            
            [NSThread sleepForTimeInterval:3];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [MBProgressHUD hideHUDForView:self.view animated:YES];
                iv.image = image;
            });
        }else{
            NSLog(@"下载失败!");
        }
    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData *data = [VFNetworkUtility downloadImageDatafrom:[NSURL URLWithString:@"http://a.hiphotos.baidu.com/image/pic/item/e4dde71190ef76c687a0a6509e16fdfaaf51675e.jpg"]];
        
        if (data != nil) {
            UIImage *image = [[UIImage alloc] initWithData:data];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                iv.image = image;
            });
        }else{
            NSLog(@"下载失败!");
        }
    });
}


@end
