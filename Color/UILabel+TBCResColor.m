//
//  UILabel+TBCResColor.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/23.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "UILabel+TBCResColor.h"
#import <objc/runtime.h>

@interface UILabel ()
@property (nonatomic, strong) NSMutableDictionary<NSString *, id> *resColors;
@end

@implementation UILabel (TBCResColor)

- (UIColor *)res_textColor
{
    return objc_getAssociatedObject(self, @selector(res_textColor));
}

- (void)setRes_textColor:(UIColor *)res_textColor
{
    if (res_textColor)
    {
        self.textColor = res_textColor;
        objc_setAssociatedObject(self, @selector(res_textColor), res_textColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_textColor forKey:NSStringFromSelector(@selector(setTextColor:))];
    }
}

- (UIColor *)res_shadowColor
{
    return objc_getAssociatedObject(self, @selector(res_shadowColor));
}

- (void)setRes_shadowColor:(UIColor *)res_shadowColor
{
    if (res_shadowColor)
    {
        self.shadowColor = res_shadowColor;
        objc_setAssociatedObject(self, @selector(res_shadowColor), res_shadowColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_shadowColor forKey:NSStringFromSelector(@selector(setShadowColor:))];
    }
}

- (UIColor *)res_highlightedTextColor
{
    return objc_getAssociatedObject(self, @selector(res_highlightedTextColor));
}

- (void)setRes_highlightedTextColor:(UIColor *)res_highlightedTextColor
{
    if (res_highlightedTextColor)
    {
        self.highlightedTextColor = res_highlightedTextColor;
        objc_setAssociatedObject(self, @selector(res_highlightedTextColor), res_highlightedTextColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_highlightedTextColor forKey:NSStringFromSelector(@selector(setHighlightedTextColor:))];
    }
}

- (NSAttributedString *)res_attributedText
{
    return objc_getAssociatedObject(self, @selector(res_attributedText));
}

- (void)setRes_attributedText:(NSAttributedString *)res_attributedText
{
    if (res_attributedText)
    {
        self.attributedText = res_attributedText;
        objc_setAssociatedObject(self, @selector(res_attributedText), res_attributedText, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_attributedText forKey:NSStringFromSelector(@selector(setAttributedText:))];
    }
}

@end
