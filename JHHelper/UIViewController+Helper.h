//
//  UIViewController+Utility.h
//  SmartPhone
//
//  Created by 陈颜俊 on 14-3-5.
//  Copyright (c) 2014年 Leedason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Helper)
- (UIAlertView *)showAlertWithTitle:(NSString *)title message:(NSString *)message;
- (UIAlertView *)showAlertWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate;
@end
