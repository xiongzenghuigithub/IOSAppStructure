//
//  ViewController.m
//  IOSAppAchitecture
//
//  Created by wadexiong on 14/11/5.
//  Copyright (c) 2014年 xiong. All rights reserved.
//

#import "RootViewController.h"

/**
 *  IndexPageViewController:  负责封装所有子功能controller的按钮选项
 */
#import "IndexPageViewController.h"




@interface RootViewController ()

@end

@implementation RootViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"应用的根控制器";
    
    _indexPageVC = [[IndexPageViewController alloc] init];
    _indexPageVC.view.frame = CGRectMake(0, 100, self.view.bounds.size.width, 300);
    _indexPageVC.view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_indexPageVC.view];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
