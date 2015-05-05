//
//  UIViewController+Utility.m
//
//  Created by 陈颜俊 on 14-3-5.
//

#import "UIViewController+Helper.h"

@implementation UIViewController (Helper)
- (UIAlertView *)showAlertWithTitle:(NSString *)title message:(NSString *)message
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alertView show];
    
    return alertView;
}

- (UIAlertView *)showAlertWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:delegate cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alertView show];
    
    return alertView;
}
@end
