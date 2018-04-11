//
//  NSMutableAttributedString+TBCResColor.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/23.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "NSMutableAttributedString+TBCResColor.h"
#import <objc/runtime.h>

@interface NSMutableAttributedString ()
@property (nonatomic, strong) NSMutableDictionary<NSString *, UIColor *> *resColors;
@end

@implementation NSMutableAttributedString (TBCResColor)

- (void)addForegroundColor:(UIColor *)color range:(NSRange)range
{
    if (color)
    {
        [self addAttribute:NSForegroundColorAttributeName value:color range:range];
        NSString *key = [NSString stringWithFormat:@"%@_%@",NSForegroundColorAttributeName,NSStringFromRange(range)];
        [self.resColors setObject:color forKey:key];
    }
}

- (void)addBackgroundColor:(UIColor *)color range:(NSRange)range
{
    if (color)
    {
        [self addAttribute:NSBackgroundColorAttributeName value:color range:range];
        NSString *key = [NSString stringWithFormat:@"%@_%@",NSBackgroundColorAttributeName,NSStringFromRange(range)];
        [self.resColors setObject:color forKey:key];
    }
}

- (void)addStrokeColor:(UIColor *)color range:(NSRange)range
{
    if (color)
    {
        [self addAttribute:NSStrokeColorAttributeName value:color range:range];
        NSString *key = [NSString stringWithFormat:@"%@_%@",NSStrokeColorAttributeName,NSStringFromRange(range)];
        [self.resColors setObject:color forKey:key];
    }
}

- (void)addUnderlineColor:(UIColor *)color range:(NSRange)range
{
    if (color)
    {
        [self addAttribute:NSUnderlineColorAttributeName value:color range:range];
        NSString *key = [NSString stringWithFormat:@"%@_%@",NSUnderlineColorAttributeName,NSStringFromRange(range)];
        [self.resColors setObject:color forKey:key];
    }
}

- (void)addStrikethroughColor:(UIColor *)color range:(NSRange)range
{
    if (color)
    {
        [self addAttribute:NSStrikethroughColorAttributeName value:color range:range];
        NSString *key = [NSString stringWithFormat:@"%@_%@",NSStrikethroughColorAttributeName,NSStringFromRange(range)];
        [self.resColors setObject:color forKey:key];
    }
}


// YYText
#pragma mark - property setter and getter
-(void)setRes_yy_color:(UIColor *)res_yy_color
{
    if (!res_yy_color) return;
    objc_setAssociatedObject(self, @selector(res_yy_color), res_yy_color, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self res_yy_setColor:res_yy_color range:NSMakeRange(0, self.length)];
}

- (UIColor *)res_yy_color
{
    return objc_getAssociatedObject(self, @selector(res_yy_color));
}

- (void)setRes_yy_backgroundColor:(UIColor *)res_yy_backgroundColor
{
    if (!res_yy_backgroundColor) return;
    objc_setAssociatedObject(self, @selector(res_yy_backgroundColor), res_yy_backgroundColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self res_yy_setBackgroundColor:res_yy_backgroundColor range:NSMakeRange(0, self.length)];
}

- (UIColor *)res_yy_backgroundColor
{
    return objc_getAssociatedObject(self, @selector(res_yy_backgroundColor));
}

- (void)setRes_yy_strokeColor:(UIColor *)res_yy_strokeColor
{
    if (!res_yy_strokeColor) return;
    objc_setAssociatedObject(self, @selector(res_yy_strokeColor), res_yy_strokeColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self res_yy_setStrokeColor:res_yy_strokeColor range:NSMakeRange(0, self.length)];
}

- (UIColor *)res_yy_strokeColor
{
    return objc_getAssociatedObject(self, @selector(res_yy_strokeColor));
}

- (void)setRes_yy_strikethroughColor:(UIColor *)res_yy_strikethroughColor
{
    if (!res_yy_strikethroughColor) return;
    objc_setAssociatedObject(self, @selector(res_yy_strikethroughColor), res_yy_strikethroughColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self res_yy_setStrikethroughColor:res_yy_strikethroughColor range:NSMakeRange(0, self.length)];
}

- (UIColor *)res_yy_strikethroughColor
{
    return objc_getAssociatedObject(self, @selector(res_yy_strikethroughColor));
}

- (void)setRes_yy_underlineColor:(UIColor *)res_yy_underlineColor
{
    if (!res_yy_underlineColor) return;
    objc_setAssociatedObject(self, @selector(res_yy_underlineColor), res_yy_underlineColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self res_yy_setUnderlineColor:res_yy_underlineColor range:NSMakeRange(0, self.length)];
}

- (UIColor *)res_yy_underlineColor
{
    return objc_getAssociatedObject(self, @selector(res_yy_underlineColor));
}

#pragma mark - some functions
- (void)res_yy_setColor:(UIColor *)color range:(NSRange)range
{
    if (color)
    {
        [self yy_setColor:color range:range];
        NSString *key = [NSString stringWithFormat:@"%@-%@",NSStringFromSelector(@selector(yy_setColor:range:)),NSStringFromRange(range)];
        [self.resColors setObject:color forKey:key];
    }
}

- (void)res_yy_setBackgroundColor:(UIColor *)color range:(NSRange)range
{
    if (color)
    {
        [self yy_setBackgroundColor:color range:range];
        NSString *key = [NSString stringWithFormat:@"%@-%@",NSStringFromSelector(@selector(yy_setBackgroundColor:range:)),NSStringFromRange(range)];
        [self.resColors setObject:color forKey:key];
    }
}

- (void)res_yy_setStrokeColor:(UIColor *)color range:(NSRange)range
{
    if (color)
    {
        [self yy_setStrokeColor:color range:range];
        NSString *key = [NSString stringWithFormat:@"%@-%@",NSStringFromSelector(@selector(yy_setStrokeColor:range:)),NSStringFromRange(range)];
        [self.resColors setObject:color forKey:key];
    }
}

- (void)res_yy_setStrikethroughColor:(UIColor *)color range:(NSRange)range
{
    if (color)
    {
        [self yy_setStrikethroughColor:color range:range];
        NSString *key = [NSString stringWithFormat:@"%@-%@",NSStringFromSelector(@selector(yy_setStrikethroughColor:range:)),NSStringFromRange(range)];
        [self.resColors setObject:color forKey:key];
    }
}

- (void)res_yy_setUnderlineColor:(UIColor *)color range:(NSRange)range
{
    if (color)
    {
        [self yy_setUnderlineColor:color range:range];
        NSString *key = [NSString stringWithFormat:@"%@-%@",NSStringFromSelector(@selector(yy_setUnderlineColor:range:)),NSStringFromRange(range)];
        [self.resColors setObject:color forKey:key];
    }
}


- (void)resoureManagerDelegate
{
    [self.resColors enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull key, UIColor *  _Nonnull obj, BOOL * _Nonnull stop) {
        
        if ([obj isKindOfClass:[UIColor class]])
        {
            if (obj.needColorChange == YES) {
                obj = [UIColor res_colorWithUIColor:obj];
            }
        }
        
        // 系统方法用'_'区分， YYText用'-'区分
        NSArray *keyArray = [key componentsSeparatedByString:@"-"];
        
        if (keyArray.count == 1) {
            keyArray = [key componentsSeparatedByString:@"_"];
            
            NSAttributedStringKey stringKey = [keyArray firstObject];
            NSString *rangeString = [keyArray lastObject];
            NSRange range = NSRangeFromString(rangeString);
            
            [self addAttribute:stringKey value:obj range:range];
        } else {
            NSString *selectorString = [keyArray firstObject];
            NSString *rangeString = [keyArray lastObject];
            NSRange range = NSRangeFromString(rangeString);
            
            if ([selectorString isEqualToString:NSStringFromSelector(@selector(yy_setColor:range:))]) {
                [self yy_setColor:obj range:range];
            } else if ([selectorString isEqualToString:NSStringFromSelector(@selector(yy_setBackgroundColor:range:))]) {
                [self yy_setBackgroundColor:obj range:range];
            } else if ([selectorString isEqualToString:NSStringFromSelector(@selector(yy_setStrokeColor:range:))]) {
                [self yy_setStrokeColor:obj range:range];
            } else if ([selectorString isEqualToString:NSStringFromSelector(@selector(yy_setStrikethroughColor:range:))]) {
                [self yy_setStrikethroughColor:obj range:range];
            } else if ([selectorString isEqualToString:NSStringFromSelector(@selector(yy_setUnderlineColor:range:))]) {
                [self yy_setUnderlineColor:obj range:range];
            }
        }
    }];
}

@end


