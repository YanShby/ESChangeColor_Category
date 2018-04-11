//
//  UIColor+TBCColor.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/4/10.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "UIColor+TBCColor.h"
#import <objc/runtime.h>

@implementation UIColor (TBCColor)

- (BOOL)needColorChange {
    return [objc_getAssociatedObject(self, @selector(needColorChange)) boolValue];
}

- (void)setNeedColorChange:(BOOL)needColorChange {
    NSNumber *need = [NSNumber numberWithBool:needColorChange];
    objc_setAssociatedObject(self, @selector(needColorChange), need, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)normalColorKey {
    return objc_getAssociatedObject(self, @selector(normalColorKey));
}

- (void)setNormalColorKey:(NSString *)colorKey {
    objc_setAssociatedObject(self, @selector(normalColorKey), colorKey, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (TBCColorType)normalColorType {
    return [objc_getAssociatedObject(self, @selector(normalColorType)) integerValue];
}

- (void)setNormalColorType:(TBCColorType)colorType {
    NSNumber *type = [NSNumber numberWithInteger:colorType];
    objc_setAssociatedObject(self, @selector(normalColorType), type, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CGFloat)normalColorAlpha {
    return [objc_getAssociatedObject(self, @selector(normalColorAlpha)) floatValue];
}

- (void)setNormalColorAlpha:(CGFloat)colorAlpha {
    
    colorAlpha = (colorAlpha > 1.f) ? 1.f : colorAlpha;
    colorAlpha = (colorAlpha < 0.f) ? 0.f : colorAlpha;
    
    NSNumber *alpha = [NSNumber numberWithFloat:colorAlpha];
    objc_setAssociatedObject(self, @selector(normalColorAlpha), alpha, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)nightColorKey {
    return objc_getAssociatedObject(self, @selector(nightColorKey));
}

- (void)setNightColorKey:(NSString *)colorKey {
    objc_setAssociatedObject(self, @selector(nightColorKey), colorKey, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (TBCColorType)nightColorType {
    return [objc_getAssociatedObject(self, @selector(nightColorType)) integerValue];
}

- (void)setNightColorType:(TBCColorType)colorType {
    NSNumber *type = [NSNumber numberWithInteger:colorType];
    objc_setAssociatedObject(self, @selector(nightColorType), type, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CGFloat)nightColorAlpha {
    return [objc_getAssociatedObject(self, @selector(nightColorAlpha)) floatValue];
}

- (void)setNightColorAlpha:(CGFloat)colorAlpha {
    
    colorAlpha = (colorAlpha > 1.f) ? 1.f : colorAlpha;
    colorAlpha = (colorAlpha < 0.f) ? 0.f : colorAlpha;
    
    NSNumber *alpha = [NSNumber numberWithFloat:colorAlpha];
    objc_setAssociatedObject(self, @selector(nightColorAlpha), alpha, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (void)setNeedColorChange:(BOOL)needColorChange
            normalColorKey:(NSString *)normalColorKey
             nightColorKey:(NSString *)nightColorKey
           normalColorType:(TBCColorType)normalColorType
            nightColorType:(TBCColorType)nightColorType
          normalColorAlpha:(CGFloat)normalColorAlpha
           nightColorAlpha:(CGFloat)nightColorAlpha
{
    self.needColorChange = needColorChange;
    self.normalColorKey = normalColorKey;
    self.nightColorKey = nightColorKey;
    self.normalColorType = normalColorType;
    self.nightColorType = nightColorType;
    self.normalColorAlpha = normalColorAlpha;
    self.nightColorAlpha = nightColorAlpha;
}
@end



@implementation UIImage (TBCImage)
+ (UIImage *)res_imageWithKey:(NSString *)key
{
    UIImage *image = [UIImage res_imageWithNormalKey:key nightKey:key];
    return image;
}

+ (UIImage *)res_imageWithNormalKey:(NSString *)key1 nightKey:(NSString *)key2
{
    UIImage *image = [UIImage imageNamed:key1];
    image.needImageChange = YES;
    image.normalImageKey = key1;
    image.nightImageKey = key2;
    return image;
}

- (BOOL)needImageChange {
    return [objc_getAssociatedObject(self, @selector(needImageChange)) boolValue];
}

- (void)setNeedImageChange:(BOOL)needImageChange {
    NSNumber *need = [NSNumber numberWithBool:needImageChange];
    objc_setAssociatedObject(self, @selector(needImageChange), need, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (NSString *)normalImageKey {
    return objc_getAssociatedObject(self, @selector(normalImageKey));
}

- (void)setNormalImageKey:(NSString *)imageKey {
    objc_setAssociatedObject(self, @selector(normalImageKey), imageKey, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

//- (CGFloat)normalImageAlpha {
//    return [objc_getAssociatedObject(self, @selector(normalImageAlpha)) floatValue];
//}
//
//- (void)setNormalImageAlpha:(CGFloat)imageAlpha {
//
//    imageAlpha = (imageAlpha > 1.f) ? 1.f : imageAlpha;
//    imageAlpha = (imageAlpha < 0.f) ? 0.f : imageAlpha;
//
//    NSNumber *alpha = [NSNumber numberWithFloat:imageAlpha];
//    objc_setAssociatedObject(self, @selector(normalImageAlpha), alpha, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//}

- (NSString *)nightImageKey {
    return objc_getAssociatedObject(self, @selector(nightImageKey));
}

- (void)setNightImageKey:(NSString *)imageKey {
    objc_setAssociatedObject(self, @selector(nightImageKey), imageKey, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

//- (CGFloat)nightImageAlpha {
//    return [objc_getAssociatedObject(self, @selector(nightImageAlpha)) floatValue];
//}
//
//- (void)setNightImageAlpha:(CGFloat)imageAlpha {
//
//    imageAlpha = (imageAlpha > 1.f) ? 1.f : imageAlpha;
//    imageAlpha = (imageAlpha < 0.f) ? 0.f : imageAlpha;
//
//    NSNumber *alpha = [NSNumber numberWithFloat:imageAlpha];
//    objc_setAssociatedObject(self, @selector(nightImageAlpha), alpha, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//}
@end
