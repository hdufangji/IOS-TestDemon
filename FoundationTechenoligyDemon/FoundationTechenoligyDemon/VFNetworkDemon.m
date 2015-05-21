//
//  VFNetworkDemon.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 20/5/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFNetworkDemon.h"
#import "MBProgressHUD.h"
#import "VFNetworkUtility.h"

#define URL1 @"http://image.tianjimedia.com/uploadImages/2014/100/30/1UY90W5R7I81_680x500.jpg"
#define URL2 @"http://a.hiphotos.baidu.com/image/pic/item/e4dde71190ef76c687a0a6509e16fdfaaf51675e.jpg"

@interface VFNetworkDemon ()
{
    UIImageView *iv;
    UIButton *bt;
}

@end

@implementation VFNetworkDemon

- (void)viewDidLoad {
    [super viewDidLoad];
    
    iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    bt = [[UIButton alloc] initWithFrame:CGRectMake(40, 40, 120, 40)];
    [bt setTitle:@"hit me!" forState:UIControlStateNormal];
    bt.backgroundColor = [UIColor redColor];
    [bt addTarget:self action:@selector(onBtClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:iv];
    [self.view addSubview:bt];
}

- (void)onBtClicked: (id)sender
{
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
    //Thread
//    [self getImageWithThread];
    
    //GCD
    [self getImageWithGCD1];
    
    //Operation
//    [self getImageWithOperation];
}

#pragma mark - Use Thread
- (void)getImageWithThread
{
    NSURL *url = [NSURL URLWithString:URL2];
    NSThread *downloadThread = [[NSThread alloc] initWithTarget:self selector:@selector(downloadImage:) object:url];
    [downloadThread start];
}

- (void)downloadImage:(NSURL *)url
{
    //1. 用NSURLRequest来实现
    //    NSError *errMsg = nil;
    //    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:&errMsg];
    
    //2. 通过NSData的initWithContentsOfURL来实现
    NSData *data = [[NSData alloc] initWithContentsOfURL:url];
    
    //    if (errMsg != nil) {
    //        NSLog(@"%@", errMsg);
    //    }else{
    //        NSLog(@"下载成功");
    //    }
    UIImage *image = [[UIImage alloc] initWithData:data];
    
    [self performSelectorOnMainThread:@selector(setImage:) withObject:image waitUntilDone:YES];
}

- (void)setImage:(UIImage *)image
{
    iv.image = image;
}


#pragma mark - Use GCD
- (void)getImageWithGCD
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [self downloadImageByUrl:URL1];
    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [self downloadImageByUrl:URL2];
    });
}

- (void)getImageWithGCD1
{
    dispatch_queue_t downloadQueue = dispatch_queue_create("myDownloadQueue", DISPATCH_QUEUE_SERIAL);
    
    dispatch_async(downloadQueue, ^(void){
        [self downloadImageByUrl:URL1];
    });
    
    dispatch_async(downloadQueue, ^(void){
        [self downloadImageByUrl:URL2];
    });
}


- (void)downloadImageByUrl: (NSString *)url
{
    NSData *data = [VFNetworkUtility downloadImageDatafrom:[NSURL URLWithString:url]];
    
    if (data != nil) {
        UIImage *image = [[UIImage alloc] initWithData:data];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:self.view animated:YES];
            iv.image = image;
        });
    }else{
        NSLog(@"下载失败!");
    }
}

#pragma mark - Use Operation
- (void)getImageWithOperation
{
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    
    NSURL *url = [NSURL URLWithString:URL2];
    NSInvocationOperation *invocationOper = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(downloadImage1:) object:url];
    
    [queue addOperation:invocationOper];
}

- (void)downloadImage1: (NSURL *)url
{
    NSData *data = [[NSData alloc] initWithContentsOfURL:url];
    
    [self performSelectorOnMainThread:@selector(setImage1:) withObject:data waitUntilDone:YES];
}

- (void)setImage1: (NSData *)data
{
    iv.image = [[UIImage alloc] initWithData:data];
}


@end
