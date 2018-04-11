//
//  UIColor+TBResColor.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/22.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "UIColor+TBResColor.h"
#import "UIColor+TBCColor.h"
#import "UIColor+TBCResManager.h"
#import "UIColor+IDPExtension.h"
#import "ESThemeManager.h"

@implementation UIColor (TBResColor)
+ (UIColor *)res_colorWithUIColor:(UIColor *)color
{
    if (!color.needColorChange) {
        return color;
    } else {
        if ([ESThemeManager sharedInstance].isNight)
        {
            if (!color.nightColorKey) {
                return [UIColor colourWithHexString:color.nightHex];
            }
            return [UIColor colorForKey:color.nightColorKey colorType:color.nightColorType alpha:color.nightColorAlpha];
        }
        else
        {
            if (!color.normalColorKey) {
                return [UIColor colourWithHexString:color.normalHex];
            }
            return [UIColor colorForKey:color.normalColorKey colorType:color.normalColorType alpha:color.normalColorAlpha];
        }
    }
}
@end

@implementation UIImage (TBResColor)

+ (UIImage *)res_imageWithUIImage:(UIImage *)image
{
    if (!image.needImageChange) {
        return image;
    } else {
        if ([ESThemeManager sharedInstance].isNight)
        {
            return [UIImage res_imageWithKey:image.nightImageKey];
        }
        else
        {
            return [UIImage res_imageWithKey:image.normalImageKey];
        }
    }
}
@end
