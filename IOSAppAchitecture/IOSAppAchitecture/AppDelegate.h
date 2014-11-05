//
//  AppDelegate.h
//  IOSAppAchitecture
//
//  Created by wadexiong on 14/11/5.
//  Copyright (c) 2014年 xiong. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RootNavController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) RootNavController * rootNav;

@end
