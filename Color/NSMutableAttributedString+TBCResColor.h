//
//  NSMutableAttributedString+TBCResColor.h
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/23.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NSObject+TBCResColor.h"
#import "NSAttributedString+YYText.h"

@interface NSMutableAttributedString (TBCResColor)

- (void)res_addAttribute:(NSAttributedStringKey)name value:(id)value range:(NSRange)range;
- (void)res_setAttributes:(nullable NSDictionary<NSAttributedStringKey, id> *)attrs range:(NSRange)range;


// YYText
@property (nullable, nonatomic, strong) UIColor * res_yy_color;
@property (nullable, nonatomic, strong) UIColor * res_yy_backgroundColor;
@property (nullable, nonatomic, strong) UIColor * res_yy_strokeColor;
@property (nullable, nonatomic, strong) UIColor * res_yy_strikethroughColor;
@property (nullable, nonatomic, strong) UIColor * res_yy_underlineColor;
- (void)res_yy_setColor:(UIColor *)color range:(NSRange)range;
- (void)res_yy_setBackgroundColor:(UIColor *)color range:(NSRange)range;
- (void)res_yy_setStrokeColor:(UIColor *)color range:(NSRange)range;
- (void)res_yy_setStrikethroughColor:(UIColor *)color range:(NSRange)range;
- (void)res_yy_setUnderlineColor:(UIColor *)color range:(NSRange)range;

@end
