

#import "BaseViewController.h"

@implementation BaseViewController

- (void)viewWillAppear:(BOOL)animated {
    
    //viewController进入时 do things..
    //1. 打印
    NSLog(@"当前出现的控制器Class = %@ ", NSStringFromClass([self class]) );
    
    //2. 统计
    
//    [self viewWillAppear:animated];
}

- (void)viewDidLoad {
    
    NSLog(@"当前控制器Class = %@ 已viewDidLoad ", NSStringFromClass([self class]));
}

- (void)viewWillDisappear:(BOOL)animated {
    //viewController离开时 do things..
    
    //1. 打印
    NSLog(@"当前离开的控制器Class = %@ ", NSStringFromClass([self class]) );
    
    //2. 统计
//    [self viewWillDisappear:animated];
}

- (void)dealloc {
    NSLog(@"当前控制器 = %@ 已经被dealloc", NSStringFromClass([self class]));
    //释放对象, 指针指向nil, 该指针指向的对象变为弱引用的对象, 就会被回收释放
}

@end
