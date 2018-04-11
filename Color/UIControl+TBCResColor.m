//
//  UIControl+TBCResColor.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/23.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "UIControl+TBCResColor.h"
#import <objc/runtime.h>

@interface UIControl ()
@property (nonatomic, strong) NSMutableDictionary<NSString *, UIColor *> *resColors;
@end

@implementation UIControl (TBCResColor)

- (UIColor *)res_tintColor
{
    return objc_getAssociatedObject(self, @selector(res_tintColor));
}

- (void)setRes_tintColor:(UIColor *)res_tintColor
{
    if (res_tintColor)
    {
        self.tintColor = res_tintColor;
        objc_setAssociatedObject(self, @selector(res_tintColor), res_tintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_tintColor forKey:NSStringFromSelector(@selector(setTintColor:))];
    }
}

@end
