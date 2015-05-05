//
//  UIButton+countDown.h
//  Categories
//
//  Created by JiaHao on 5/4/15.
//  Copyright (c) 2015 JH. All rights reserved.
//
//

#import <UIKit/UIKit.h>

@interface UIButton (CountDown)
-(void)startTime:(NSInteger )timeout title:(NSString *)tittle waitTittle:(NSString *)waitTittle;
@end
