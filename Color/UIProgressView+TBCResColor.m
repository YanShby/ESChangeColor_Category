//
//  UIProgressView+TBCResColor.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/23.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "UIProgressView+TBCResColor.h"
#import <objc/runtime.h>

@interface UIProgressView ()
@property (nonatomic, strong) NSMutableDictionary<NSString *, UIColor *> *resColors;
@end

@implementation UIProgressView (TBCResColor)

- (UIColor *)res_progressTintColor
{
    return objc_getAssociatedObject(self, @selector(res_progressTintColor));
}

- (void)setRes_progressTintColor:(UIColor *)res_progressTintColor
{
    if (res_progressTintColor)
    {
        self.progressTintColor = res_progressTintColor;
        objc_setAssociatedObject(self, @selector(res_progressTintColor), res_progressTintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_progressTintColor forKey:NSStringFromSelector(@selector(setProgressTintColor:))];
    }
}

- (UIColor *)res_trackTintColor
{
    return objc_getAssociatedObject(self, @selector(res_trackTintColor));
}

- (void)setRes_trackTintColor:(UIColor *)res_trackTintColor
{
    if(res_trackTintColor)
    {
        self.trackTintColor = res_trackTintColor;
        objc_setAssociatedObject(self, @selector(res_trackTintColor), res_trackTintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_trackTintColor forKey:NSStringFromSelector(@selector(setTrackTintColor:))];
    }
}

@end

