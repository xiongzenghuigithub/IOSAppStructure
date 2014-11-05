/**
 *  整个APP的根导航控制器(整个app用到的所有viewController的容器栈)
 *      1. 管理所有ViewCtroller的
 *              >alloc ViewController -- 根据传入的type表示进行不同类型的实例化
 *                  (Class VCClass = NSClassFromNSString(按照type值拼接成不同的控制器类名字))
 *              >pushViewControlelr
 *              >popViewController
 *              >getTopViewController
 *
 *      2. 根据alloc时传入的type值创建完ViewController后, 集中管理所有控制器的差异化
 *              > 差异化不同的ViewController的UI
 *                  > navigationItem左右两个
 */

#import <UIKit/UIKit.h>

@interface RootNavController : UINavigationController

/**
 *  所有BaseViewController子类的控制器的push方法都会到 root view controller 的这个方法来
 */
- (BaseViewController *)pushWithType:(NSString *)type Animation:(BOOL)isAnimation;

/**
 * 将某个控制器退栈时做点什么
 */
- (void)popTopViewControllerWithisAnimation:(BOOL)animatin;

/**
 *  获取UINavigationController当前栈顶控制器
 */
- (id)getTopViewControlelr;


/**
 *  根据传入的控制器ID， 差异化push进来的控制器
 */
- (void)initNavKind1:(id)VC;
- (void)initNavKind2:(id)VC;
- (void)initNavKind3:(id)VC;
- (void)initNavKind4:(id)VC;
- (void)initNavKind5:(id)VC;
- (void)initNavKind6:(id)VC;

@end
