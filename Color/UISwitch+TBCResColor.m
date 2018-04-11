//
//  UISwitch+TBCResColor.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/23.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "UISwitch+TBCResColor.h"
#import <objc/runtime.h>

@interface UISwitch ()
@property (nonatomic, strong) NSMutableDictionary<NSString *, UIColor *> *resColors;
@end

@implementation UISwitch (TBCResColor)

- (UIColor *)res_onTintColor
{
    return objc_getAssociatedObject(self, @selector(res_onTintColor));
}

- (void)setRes_onTintColor:(UIColor *)res_onTintColor
{
    if (res_onTintColor)
    {
        self.onTintColor = res_onTintColor;
        objc_setAssociatedObject(self, @selector(res_onTintColor), res_onTintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_onTintColor forKey:NSStringFromSelector(@selector(setOnTintColor:))];
    }
}

- (UIColor *)res_thumbTintColor
{
    return objc_getAssociatedObject(self, @selector(res_thumbTintColor));
}

- (void)setRes_thumbTintColor:(UIColor *)res_thumbTintColor
{
    if (res_thumbTintColor)
    {
        self.thumbTintColor = res_thumbTintColor;
        objc_setAssociatedObject(self, @selector(res_thumbTintColor), res_thumbTintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_thumbTintColor forKey:NSStringFromSelector(@selector(setThumbTintColor:))];
    }
}

@end
