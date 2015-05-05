//
//  UIWindow+Hierarchy.m
//  Categories
//
//  Created by JiaHao on 5/4/15.
//  Copyright (c) 2015 JH. All rights reserved.
//

#import "UIWindow+Hierarchy.h"

@implementation UIWindow (Hierarchy)

- (UIViewController*) topMostController
{
    UIViewController *topController = [self rootViewController];
    
    //  Getting topMost ViewController
    while ([topController presentedViewController])	topController = [topController presentedViewController];
    
    //  Returning topMost ViewController
    return topController;
}

- (UIViewController*)currentViewController;
{
    UIViewController *currentViewController = [self topMostController];
    
    while ([currentViewController isKindOfClass:[UINavigationController class]] && [(UINavigationController*)currentViewController topViewController])
        currentViewController = [(UINavigationController*)currentViewController topViewController];
    
    return currentViewController;
}

@end
