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
@property (nonatomic, strong) NSMutableDictionary<NSString *, TBCResColorBlock> *resColors;
@end

@implementation UISwitch (TBCResColor)

- (TBCResColorBlock)res_onTintColor
{
    return objc_getAssociatedObject(self, @selector(res_onTintColor));
}

- (void)setRes_onTintColor:(TBCResColorBlock)res_onTintColor
{
    if (res_onTintColor)
    {
        self.onTintColor = res_onTintColor();
        objc_setAssociatedObject(self, @selector(res_onTintColor), res_onTintColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
        [self.resColors setObject:[res_onTintColor copy] forKey:NSStringFromSelector(@selector(setOnTintColor:))];
    }
}

- (TBCResColorBlock)res_thumbTintColor
{
    return objc_getAssociatedObject(self, @selector(res_thumbTintColor));
}

- (void)setRes_thumbTintColor:(TBCResColorBlock)res_thumbTintColor
{
    if (res_thumbTintColor)
    {
        self.thumbTintColor = res_thumbTintColor();
        objc_setAssociatedObject(self, @selector(res_thumbTintColor), res_thumbTintColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
        [self.resColors setObject:[res_thumbTintColor copy] forKey:NSStringFromSelector(@selector(setThumbTintColor:))];
    }
}

- (void)resoureManagerDelegate
{
    [self.resColors enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull selector, TBCResColorBlock  _Nonnull colorBlock, BOOL * _Nonnull stop) {
        SEL sel = NSSelectorFromString(selector);
        UIColor *color = colorBlock();
        
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [self performSelector:sel withObject:color];
#pragma clang diagnostic pop

    }];
}
@end
