//
//  UIColor+TBCColor.h
//  ESChangeColor
//
//  Created by 申岩 on 2018/4/10.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UIColor+TBCResManager.h"

@interface UIColor (TBCColor)
/// 是否需要模式切换改变颜色
@property (nonatomic, assign) BOOL           needColorChange;

//  **** 依赖色库 ****   //
/// 日间色库Key值
@property (nonatomic, copy)   NSString       *normalColorKey;
/// 日间色库类型
@property (nonatomic, assign) TBCColorType   normalColorType;
/// 夜间色库Key值
@property (nonatomic, copy)   NSString       *nightColorKey;
/// 夜间色库类型
@property (nonatomic, assign) TBCColorType   nightColorType;
//  **** 依赖色库 ****   //

/// 日间颜色透明度
@property (nonatomic, assign) CGFloat        normalColorAlpha;
/// 夜间颜色透明度
@property (nonatomic, assign) CGFloat        nightColorAlpha;
/// 日间Hex
@property (nonatomic, copy)   NSString       *normalHex;
/// 夜间Hex
@property (nonatomic, copy)   NSString       *nightHex;


- (void)setNeedColorChange:(BOOL)needColorChange
            normalColorKey:(NSString *)normalColorKey
             nightColorKey:(NSString *)nightColorKey
           normalColorType:(TBCColorType)normalColorType
            nightColorType:(TBCColorType)nightColorType
          normalColorAlpha:(CGFloat)normalColorAlpha
           nightColorAlpha:(CGFloat)nightColorAlpha;



/**
 根据Hex值来设置颜色

 @param normalHex 日间Hex
 @param normalAlpha 日间颜色透明度
 @param nightHex 夜间Hex
 @param nightAlpha 夜间颜色透明度
 @return 返回一个颜色
 */
+ (UIColor *)colorWithNormalHex:(NSString *)normalHex
                    normalAlpha:(CGFloat)normalAlpha
                       nightHex:(NSString *)nightHex
                     nightAlpha:(CGFloat)nightAlpha;


/**
 根据Hex来设置颜色（日夜间颜色透明度默认为1）

 @param normalHex 日间Hex
 @param nightHex 夜间Hex
 @return 返回一个颜色
 */
+ (UIColor *)colorWithNormalHex:(NSString *)normalHex
                       nightHex:(NSString *)nightHex;


/**
 根据一个Hex来设置颜色，日夜间都根据该值生成相同颜色

 @param normalHex 颜色Hex
 @return 返回一个颜色
 */
+ (UIColor *)colorWithNormalHex:(NSString *)normalHex;

@end


@interface UIImage (TBCImage)
/// 是否需要模式切换改变颜色
@property (nonatomic, assign) BOOL           needImageChange;

/// 日间ImageKey值
@property (nonatomic, copy)   NSString       *normalImageKey;
/// 日间Image透明度
@property (nonatomic, assign) CGFloat        normalImageAlpha;

/// 夜间ImageKey值
@property (nonatomic, copy)   NSString       *nightImageKey;
/// 夜间Image透明度
@property (nonatomic, assign) CGFloat        nightImageAlpha;

+ (UIImage *)res_imageWithKey:(NSString *)key;
+ (UIImage *)res_imageWithNormalKey:(NSString *)key1 nightKey:(NSString *)key2;
@end
