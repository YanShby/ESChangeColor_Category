//
//  UIColor+TBResColor.h
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/22.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (TBResColor)

+ (UIColor *)res_colorWithUIColor:(UIColor *)UIColor;

@end


@interface UIImage (TBResColor)
+ (UIImage *)res_imageWithUIImage:(UIImage *)image;
@end
