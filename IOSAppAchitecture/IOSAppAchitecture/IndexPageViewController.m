//
//  IndexPageViewController.m
//  IOSAppAchitecture
//
//  Created by wadexiong on 14/11/5.
//  Copyright (c) 2014年 xiong. All rights reserved.
//

#import "IndexPageViewController.h"

//自控制器集合

@interface IndexPageViewController ()

@end

@implementation IndexPageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton * btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.backgroundColor = [UIColor lightGrayColor];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn1.frame = CGRectMake(20, 0, 200, 40);
    [btn1 setTitle:@"push to child 1 controller" forState:UIControlStateNormal];
    btn1.tag = 1;
    [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton * btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.backgroundColor = [UIColor lightGrayColor];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn2.frame = CGRectMake(20, CGRectGetMaxY(btn1.frame) + 5, 200, 40);
    [btn2 setTitle:@"push to child 2 controller" forState:UIControlStateNormal];
    btn2.tag = 2;
    [btn2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    UIButton * btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.backgroundColor = [UIColor lightGrayColor];
    [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn3.frame = CGRectMake(20, CGRectGetMaxY(btn2.frame) + 5, 200, 40);
    [btn3 setTitle:@"push to child 3 controller" forState:UIControlStateNormal];
    btn3.tag = 3;
    [btn3 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    
    UIButton * btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn4.backgroundColor = [UIColor lightGrayColor];
    [btn4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn4.frame = CGRectMake(20, CGRectGetMaxY(btn3.frame) + 5, 200, 40);
    [btn4 setTitle:@"push to child 4 controller" forState:UIControlStateNormal];
    btn4.tag = 4;
    [btn4 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn4];
    
    UIButton * btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn5.backgroundColor = [UIColor lightGrayColor];
    [btn5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn5.frame = CGRectMake(20, CGRectGetMaxY(btn4.frame) + 5, 200, 40);
    [btn5 setTitle:@"push to child 5 controller" forState:UIControlStateNormal];
    btn5.tag = 5;
    [btn5 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn5];
    
    UIButton * btn6 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn6.backgroundColor = [UIColor lightGrayColor];
    [btn6 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn6.frame = CGRectMake(20, CGRectGetMaxY(btn5.frame) + 5, 200, 40);
    [btn6 setTitle:@"push to child 6 controller" forState:UIControlStateNormal];
    btn6.tag = 6;
    [btn6 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn6];
}


- (void)btnClick:(UIButton *)clickedBtn {
    int tag = clickedBtn.tag;
    
    switch (tag) {
        case 1:
            [ROOT_NAV pushWithType:kChild1Controller Animation:YES];
            break;
        case 2:
            [ROOT_NAV pushWithType:kChild2Controller Animation:YES];
            break;
        case 3:
            [ROOT_NAV pushWithType:kChild3Controller Animation:YES];
            break;
        case 4:
            [ROOT_NAV pushWithType:kChild4Controller Animation:YES];
            break;
        case 5:
            [ROOT_NAV pushWithType:kChild5Controller Animation:YES];
            break;
        case 6:
            [ROOT_NAV pushWithType:kChild6Controller Animation:YES];
            break;
    }
}


@end
