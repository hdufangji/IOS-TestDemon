//
//  VFUITabBarControllerDemon.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/20/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFUITabBarControllerDemon.h"

@interface VFUITabBarControllerDemon ()
{
    UIViewController *vc1, *vc2, *vc3, *vc4, *vc5, *vc6, *vc7, *morevc;
}

@end

@implementation VFUITabBarControllerDemon

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initTabBarController];
}

- (void)initTabBarController
{
    vc1 = [[UIViewController alloc] init];
    [vc1 setTitle:@"I'm first vc!"];
    vc1.view.backgroundColor = [UIColor redColor];
    
    vc2 = [[UIViewController alloc] init];
    [vc2 setTitle:@"I'm second vc!"];
    vc2.view.backgroundColor = [UIColor blueColor];
    
    vc3 = [[UIViewController alloc] init];
    [vc3 setTitle:@"Constumer first vc!"];
    vc3.view.backgroundColor = [UIColor yellowColor];
    
    vc4 = [[UIViewController alloc] init];
    [vc4 setTitle:@"Constumer second vc!"];
    vc4.view.backgroundColor = [UIColor greenColor];
    
    vc5 = [[UIViewController alloc] init];
    [vc5 setTitle:@"Constumer second vc!"];
    vc5.view.backgroundColor = [UIColor purpleColor];
    
    vc6 = [[UIViewController alloc] init];
    [vc6 setTitle:@"Constumer second vc!"];
    vc6.view.backgroundColor = [UIColor whiteColor];
    
    vc7 = [[UIViewController alloc] init];
    [vc7 setTitle:@"Constumer second vc!"];
    vc7.view.backgroundColor = [UIColor brownColor];
    
    morevc = [[UIViewController alloc] init];
    [morevc setTitle:@"more vc!"];
    morevc.view.backgroundColor = [UIColor grayColor];
    
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"first" image:nil selectedImage:nil];
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"second" image:nil selectedImage:nil];
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:@"Constumer first" image:nil selectedImage:nil];
    UITabBarItem *item4 = [[UITabBarItem alloc] initWithTitle:@"Constumer second" image:nil selectedImage:nil];
    UITabBarItem *item5 = [[UITabBarItem alloc] initWithTitle:@"fifth" image:nil selectedImage:nil];
    UITabBarItem *item6 = [[UITabBarItem alloc] initWithTitle:@"sixth" image:nil selectedImage:nil];
    UITabBarItem *item7 = [[UITabBarItem alloc] initWithTitle:@"seventh" image:nil selectedImage:nil];
    UITabBarItem *itemMore = [[UITabBarItem alloc] initWithTitle:@"More" image:nil selectedImage:nil];
    
    vc1.tabBarItem = item1;
    vc2.tabBarItem = item2;
    vc3.tabBarItem = item3;
    vc4.tabBarItem = item4;
    vc5.tabBarItem = item5;
    vc6.tabBarItem = item6;
    vc7.tabBarItem = item7;
    morevc.tabBarItem = itemMore;
    
//    self.moreNavigationController = [NSArray arrayWithObjects:itemMore, nil];
    self.viewControllers = [NSArray arrayWithObjects:vc1, vc2, vc3, vc4, vc5, morevc, nil];
    self.customizableViewControllers = [NSArray arrayWithObjects: vc6, vc7, nil];
}

@end
