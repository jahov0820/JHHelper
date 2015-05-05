//
//  UINavigationController+BarSetting.m
//
//  Created by 陈颜俊 on 14-3-5.
//

#import "UINavigationController+Helper.h"

@implementation UINavigationController (Helper)

- (id)findViewController:(Class)clazz
{
    for (UIViewController *viewController in self.viewControllers) {
        if ([viewController isKindOfClass:clazz]) {
            return viewController;
        }
    }
    
    return nil;
}
@end
