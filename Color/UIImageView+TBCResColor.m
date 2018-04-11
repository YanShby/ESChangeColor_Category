//
//  UIImageView+TBCResColor.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/23.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "UIImageView+TBCResColor.h"
#import <objc/runtime.h>

@interface UIImageView ()
@property (nonatomic, strong) NSMutableDictionary<NSString *, UIImage *> *resColors;
@end

@implementation UIImageView (TBCResColor)

- (instancetype)res_initWithImage:(UIImage *)image
{
    if (image)
    {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.res_image = image;
        return imageView;
    }
    return nil;
}

- (UIImage *)res_image
{
    return objc_getAssociatedObject(self, @selector(res_image));
}

- (void)setRes_image:(UIImage *)res_image
{
    if (res_image)
    {
        self.image = res_image;
        objc_setAssociatedObject(self, @selector(res_image), res_image, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self.resColors setObject:res_image forKey:NSStringFromSelector(@selector(setImage:))];
    }
}

@end
