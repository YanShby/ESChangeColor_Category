//
//  UITextField+TBCResColor.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/23.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "UITextField+TBCResColor.h"
#import <objc/runtime.h>

@interface UITextField ()
@property (nonatomic, strong) NSMutableDictionary<NSString *, UIColor *> *resColors;
@end

@implementation UITextField (TBCResColor)

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

@end
