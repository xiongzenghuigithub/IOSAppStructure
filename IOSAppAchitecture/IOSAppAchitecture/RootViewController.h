//
//  ViewController.h
//  IOSAppAchitecture
//
//  Created by wadexiong on 14/11/5.
//  Copyright (c) 2014年 xiong. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  RootViewController作为App主界面的跟界面容器，只负责添加其他子控制器，不负责显示UI
 *      1. 顶部控制器
 *      2. 中间控制器
 *      3. 底部控制器 - IndexPageViewController
 *                          > IndexIcon:(UIButton) : 封装了push去其他所有子控制器界面的相关参数
 *                              > 点击事件中，所有的push方法，都是调用UIWindow.rootNav.pushWithType:Animation:方法
 *
 */
@class IndexPageViewController;

@interface RootViewController : BaseViewController


@property (nonatomic, strong) IndexPageViewController * indexPageVC;

@end
