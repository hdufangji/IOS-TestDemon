//
//  VFScrollViewImageViewDemon.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/16/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFScrollViewImageViewDemon.h"

@interface VFScrollViewImageViewDemon ()
{
    UIScrollView *scrollView;
    UIImageView *imageView;
}

@end

@implementation VFScrollViewImageViewDemon

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initScrollView];
    
    [self initImageView];
    
    [scrollView setContentSize:CGSizeMake(imageView.frame.size.width, imageView.frame.size.height)];
    [scrollView addSubview:imageView];
    
    [self.view addSubview:scrollView];
    // Do any additional setup after loading the view.
}

- (void)initScrollView
{
    scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    
    scrollView.directionalLockEnabled = YES;
    scrollView.backgroundColor = [UIColor redColor];
    scrollView.showsVerticalScrollIndicator = YES;
    scrollView.indicatorStyle = UIScrollViewIndicatorStyleBlack;
    scrollView.maximumZoomScale = 2.0;
    scrollView.minimumZoomScale = 0.5;
    
    scrollView.delegate = self;
}

- (void)initImageView
{
    imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ScreenShot1.png"]];
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return imageView;
}

@end
