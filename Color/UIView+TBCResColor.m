//
//  UIView+TBCResColor.m
//  TBCResColor
//
//  Created by 申岩 on 2017/12/4.
//  Copyright © 2017年 申岩. All rights reser;ved.
//

#import "UIView+TBCResColor.h"
#import <objc/runtime.h>
#import "UIColor+TBCColor.h"

#import "UIColor+TBCResManager.h"

@interface UIView ()
@property (nonatomic, strong) NSMutableDictionary<NSString *, UIColor *> *resColors;
@end

@implementation UIView (TBCResColor)

- (UIColor *)res_backgroundColor
{
    return objc_getAssociatedObject(self, @selector(res_backgroundColor));
}

- (void)setRes_backgroundColor:(UIColor *)res_backgroundColor
{
    if (res_backgroundColor)
    {
        self.backgroundColor = res_backgroundColor;
        objc_setAssociatedObject(self, @selector(res_backgroundColor), res_backgroundColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_backgroundColor forKey:NSStringFromSelector(@selector(setBackgroundColor:))];
    }
}

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
