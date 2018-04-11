//
//  UISlider+TBCResColor.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/23.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "UISlider+TBCResColor.h"
#import <objc/runtime.h>
@interface UISlider ()
@property (nonatomic, strong) NSMutableDictionary<NSString *, UIColor *> *resColors;
@end

@implementation UISlider (TBCResColor)

- (UIColor *)res_minimumTrackTintColor
{
    return objc_getAssociatedObject(self, @selector(res_minimumTrackTintColor));
}

- (void)setRes_minimumTrackTintColor:(UIColor *)res_minimumTrackTintColor
{
    if (res_minimumTrackTintColor)
    {
        self.minimumTrackTintColor = res_minimumTrackTintColor;
        objc_setAssociatedObject(self, @selector(res_minimumTrackTintColor), res_minimumTrackTintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_minimumTrackTintColor forKey:NSStringFromSelector(@selector(setMinimumTrackTintColor:))];
    }
}

- (UIColor *)res_maximumTrackTintColor
{
    return objc_getAssociatedObject(self, @selector(res_maximumTrackTintColor));
}

- (void)setRes_maximumTrackTintColor:(UIColor *)res_maximumTrackTintColor
{
    if (res_maximumTrackTintColor)
    {
        self.maximumTrackTintColor = res_maximumTrackTintColor;
        objc_setAssociatedObject(self, @selector(res_maximumTrackTintColor), res_maximumTrackTintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_maximumTrackTintColor forKey:NSStringFromSelector(@selector(setMaximumTrackTintColor:))];
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
