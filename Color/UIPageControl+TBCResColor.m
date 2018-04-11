//
//  UIPageControl+TBCResColor.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/23.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "UIPageControl+TBCResColor.h"
#import <objc/runtime.h>

@interface UIPageControl ()
@property (nonatomic, strong) NSMutableDictionary<NSString *, UIColor *> *resColors;
@end

@implementation UIPageControl (TBCResColor)

- (UIColor *)res_pageIndicatorTintColor
{
    return objc_getAssociatedObject(self, @selector(res_pageIndicatorTintColor));
}

- (void)setRes_pageIndicatorTintColor:(UIColor *)res_pageIndicatorTintColor
{
    if (res_pageIndicatorTintColor)
    {
        self.pageIndicatorTintColor = res_pageIndicatorTintColor;
        objc_setAssociatedObject(self, @selector(res_pageIndicatorTintColor), res_pageIndicatorTintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_pageIndicatorTintColor forKey:NSStringFromSelector(@selector(setPageIndicatorTintColor:))];
    }
}

- (UIColor *)res_currentPageIndicatorTintColor
{
    return objc_getAssociatedObject(self, @selector(res_currentPageIndicatorTintColor));
}

- (void)setRes_currentPageIndicatorTintColor:(UIColor *)res_currentPageIndicatorTintColor
{
    if (res_currentPageIndicatorTintColor)
    {
        self.currentPageIndicatorTintColor = res_currentPageIndicatorTintColor;
        objc_setAssociatedObject(self, @selector(res_currentPageIndicatorTintColor), res_currentPageIndicatorTintColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_currentPageIndicatorTintColor forKey:NSStringFromSelector(@selector(setCurrentPageIndicatorTintColor:))];
    }
}

@end

