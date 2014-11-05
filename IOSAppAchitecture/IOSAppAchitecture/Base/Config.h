
#ifndef IOSAppAchitecture_Config_h
#define IOSAppAchitecture_Config_h

#import "AppDelegate.h"
#define APP_DELEGATE (AppDelegate *)[[UIApplication sharedApplication] delegate]

#import "BaseViewController.h"
#import "RootNavController.h"
#define ROOT_NAV [APP_DELEGATE rootNav]

#if DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"\nfunction:%s line:%d content:%s\n", __FUNCTION__, __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(FORMAT, ...) nil
#endif

#define kChild1Controller @"1"
#define kChild2Controller @"2"
#define kChild3Controller @"3"
#define kChild4Controller @"4"
#define kChild5Controller @"5"
#define kChild6Controller @"6"

#endif
