

#import "RootNavController.h"

@interface RootNavController ()

@end

@implementation RootNavController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (BaseViewController *)pushWithType:(NSString *)type Animation:(BOOL)isAnimation {
    
    //1. 根据传入的type值(从IndexPageViewController中得某一个按钮的tag值,并点击传入)构造控制器类名前缀
    NSString * classNamePrefix = @"";
    
    if ([type isEqualToString:kChild1Controller]) {
        classNamePrefix = @"Child1";
    }
    else if ([type isEqualToString:kChild2Controller]) {
        classNamePrefix = @"Child2";
    }
    else if ([type isEqualToString:kChild3Controller]) {
        classNamePrefix = @"Child3";
    }
    else if ([type isEqualToString:kChild4Controller]) {
        classNamePrefix = @"Child4";
    }
    else if ([type isEqualToString:kChild5Controller]) {
        classNamePrefix = @"Child5";
    }
    else if ([type isEqualToString:kChild6Controller]) {
        classNamePrefix = @"Child6";
    }
    
    //2. 还可以继续拼接完整类名
    NSString * completClassName = [NSString stringWithFormat:@"%@Controller", classNamePrefix];
    NSLog(@"completClassName = %@" ,completClassName);
    
    //3. 实例化控制器
    Class VCClass = NSClassFromString(completClassName);
    id VCObj = [[VCClass alloc] init];
    
    //5. UINvigationController对象的push控制器入栈
    [self pushViewController:VCObj animated:isAnimation];//UINavigationController内部自己的push，使用self
    
    //6. 对完整类名控制器差异化UI
    if ([completClassName isEqualToString:@"Child1Controller"]) {
        [self initNavKind1:VCObj];
    }
    else if ([completClassName isEqualToString:@"Child2Controller"]) {
        [self initNavKind2:VCObj];
    }
    else if ([completClassName isEqualToString:@"Child3Controller"]) {
        [self initNavKind3:VCObj];
    }
    else if ([completClassName isEqualToString:@"Child4Controller"]) {
        [self initNavKind4:VCObj];
    }
    else if ([completClassName isEqualToString:@"Child5Controller"]) {
        [self initNavKind5:VCObj];
    }
    else if ([completClassName isEqualToString:@"Child6Controller"]) {
        [self initNavKind6:VCObj];
    }

    
    return VCObj;
}

- (void)popTopViewControllerWithisAnimation:(BOOL)animatin {
    
    //1. 根据不同clasName做不同的事
    id VC = [self topViewController];
    NSString * className = NSStringFromClass([VC class]);
    if ([className isEqualToString:@"Child1Controller"]) {
        NSLog(@"Child1Controller退出UINavigationController栈顶时，做点什么。。。。");
    }
    else if ([className isEqualToString:@"Child2Controller"]) {
        NSLog(@"Child2Controller退出UINavigationController栈顶时，做点什么。。。。");
    }
    else if ([className isEqualToString:@"Child3Controller"]) {
        NSLog(@"Child3Controller退出UINavigationController栈顶时，做点什么。。。。");
    }
    else if ([className isEqualToString:@"Child4Controller"]) {
        NSLog(@"Child4Controller退出UINavigationController栈顶时，做点什么。。。。");
    }
    else if ([className isEqualToString:@"Child5Controller"]) {
        NSLog(@"Child5Controller退出UINavigationController栈顶时，做点什么。。。。");
    }
    else if ([className isEqualToString:@"Child6Controller"]) {
        NSLog(@"Child6Controller退出UINavigationController栈顶时，做点什么。。。。");
    }
    
    //2. 退栈
    [self popViewControllerAnimated:YES];
    
}

- (id)getTopViewControlelr {
    
    //1.根据不同clasName做不同的事
    id VC = [self topViewController];
    NSString * className = NSStringFromClass([VC class]);
    if ([className isEqualToString:@"Child1Controller"]) {
        NSLog(@"获取UINavigationController栈顶控制器 = %@，做点什么。。。。", className);
    }
    else if ([className isEqualToString:@"Child2Controller"]) {
        NSLog(@"获取UINavigationController栈顶控制器 = %@，做点什么。。。。", className);
    }
    else if ([className isEqualToString:@"Child3Controller"]) {
        NSLog(@"获取UINavigationController栈顶控制器 = %@，做点什么。。。。", className);
    }
    else if ([className isEqualToString:@"Child4Controller"]) {
        NSLog(@"获取UINavigationController栈顶控制器 = %@，做点什么。。。。", className);
    }
    else if ([className isEqualToString:@"Child5Controller"]) {
        NSLog(@"获取UINavigationController栈顶控制器 = %@，做点什么。。。。", className);
    }
    else if ([className isEqualToString:@"Child6Controller"]) {
       NSLog(@"获取UINavigationController栈顶控制器 = %@，做点什么。。。。", className);
    }

   
    //2. 返回栈顶view控制器
    return VC;
}

- (void)initNavKind1:(id)VC {
    if ([VC isKindOfClass:[BaseViewController class]]) {
        BaseViewController * vc = (BaseViewController *)VC;
        vc.navigationItem.rightBarButtonItem =  [[UIBarButtonItem alloc] initWithTitle:@"类型1导航按钮" style:UIBarButtonSystemItemDone target:VC action:@selector(navigationItemClick:)];
    }

}

- (void)initNavKind2:(id)VC {
    if ([VC isKindOfClass:[BaseViewController class]]) {
        BaseViewController * vc = (BaseViewController *)VC;
        vc.navigationItem.rightBarButtonItem =  [[UIBarButtonItem alloc] initWithTitle:@"类型2导航按钮" style:UIBarButtonSystemItemDone target:VC action:@selector(navigationItemClick:)];
    }
}

- (void)initNavKind3:(id)VC {
    if ([VC isKindOfClass:[BaseViewController class]]) {
        BaseViewController * vc = (BaseViewController *)VC;
        vc.navigationItem.rightBarButtonItem =  [[UIBarButtonItem alloc] initWithTitle:@"类型3导航按钮" style:UIBarButtonSystemItemDone target:VC action:@selector(navigationItemClick:)];
    }
}

- (void)initNavKind4:(id)VC {
    if ([VC isKindOfClass:[BaseViewController class]]) {
        BaseViewController * vc = (BaseViewController *)VC;
        vc.navigationItem.rightBarButtonItem =  [[UIBarButtonItem alloc] initWithTitle:@"类型4导航按钮" style:UIBarButtonSystemItemDone target:VC action:@selector(navigationItemClick:)];
    }
}

- (void)initNavKind5:(id)VC {
    if ([VC isKindOfClass:[BaseViewController class]]) {
        BaseViewController * vc = (BaseViewController *)VC;
        vc.navigationItem.rightBarButtonItem =  [[UIBarButtonItem alloc] initWithTitle:@"类型5导航按钮" style:UIBarButtonSystemItemDone target:VC action:@selector(navigationItemClick:)];
    }
}

- (void)initNavKind6:(id)VC {
    if ([VC isKindOfClass:[BaseViewController class]]) {
        BaseViewController * vc = (BaseViewController *)VC;
        vc.navigationItem.rightBarButtonItem =  [[UIBarButtonItem alloc] initWithTitle:@"类型6导航按钮" style:UIBarButtonSystemItemDone target:VC action:@selector(navigationItemClick:)];
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
}


@end
