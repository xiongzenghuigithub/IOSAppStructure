//
//  AppDelegate.h
//  IOSAppAchitecture
//
//  Created by wadexiong on 14/11/5.
//  Copyright (c) 2014年 xiong. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  AppDelegate包含一个UINavigationController, 集中管理所有ViewCtroller
 */
@class RootNavController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) RootNavController * rootNav;

@end
