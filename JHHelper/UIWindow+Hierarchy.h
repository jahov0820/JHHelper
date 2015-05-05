//
//  UIWindow+Hierarchy.h
//  Categories
//
//  Created by JiaHao on 5/4/15.
//  Copyright (c) 2015 JH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWindow (Hierarchy)

/**
*  topMostController
*
*  @return the current Top Most ViewController in hierarchy
*/

- (UIViewController*) topMostController;


/**
 *  currentViewController
 *
 *  @return the topViewController in stack of topMostController
 */
- (UIViewController*)currentViewController;
@end
