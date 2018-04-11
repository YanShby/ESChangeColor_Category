//
//  UIBarButtonItem+TBCResColor.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/23.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "UIBarButtonItem+TBCResColor.h"
#import <objc/runtime.h>

@interface UIBarButtonItem ()
@property (nonatomic, strong) NSMutableDictionary<NSString *, TBCResColorBlock> *resColors;
@end

@implementation UIBarButtonItem (TBCResColor)
- (TBCResColorBlock)res_tintColor
{
    return objc_getAssociatedObject(self, @selector(res_tintColor));
}

- (void)setRes_tintColor:(TBCResColorBlock)res_tintColor
{
    if (res_tintColor)
    {
        self.tintColor = res_tintColor();
        objc_setAssociatedObject(self, @selector(res_tintColor), res_tintColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
        [self.resColors setObject:[res_tintColor copy] forKey:NSStringFromSelector(@selector(setTintColor:))];
    }
}
@end
