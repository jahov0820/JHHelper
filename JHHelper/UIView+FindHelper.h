//
//  UIView+FindHelper.h
//  Categories
//
//  Created by JiaHao on 5/4/15.
//  Copyright (c) 2015 JH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FindHelper)

- (id)findSubViewWithSubViewClass:(Class)clazz;
- (id)findsuperViewWithSuperViewClass:(Class)clazz;

- (BOOL)findAndResignFirstResponder;
- (UIView *)findFirstResponder;

@end
