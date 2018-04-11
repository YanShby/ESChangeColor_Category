//
//  UIButton+TBCResColor.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/23.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "UIButton+TBCResColor.h"
#import <objc/runtime.h>

#import "UIColor+TBCColor.h"


@interface UIButton ()
@property (nonatomic, strong) NSMutableDictionary<NSString *, id> *resColors;
@end

@implementation UIButton (TBCResColor)

- (void)resoureManagerDelegate
{
    [self.resColors enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[NSDictionary class]])
        {
            [obj enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull selector, id _Nonnull object, BOOL * _Nonnull stop) {
                NSArray *keyArray = [key componentsSeparatedByString:@"_"];
                UIControlState state = [[keyArray firstObject] integerValue];
                [UIView animateWithDuration:0.1f animations:^{
                    if ([selector isEqualToString:NSStringFromSelector(@selector(setTitleColor:forState:))]) {
                        UIColor *resultColor = [UIColor res_colorWithUIColor:((UIColor *)object)];
                        [self setTitleColor:resultColor forState:state];
                    } else if ([selector isEqualToString:NSStringFromSelector(@selector(setBackgroundImage:forState:))]) {
                        UIImage *resultImage = [UIImage res_imageWithUIImage:((UIImage *)object)];
                        [self setBackgroundImage:resultImage forState:state];
                    } else if ([selector isEqualToString:NSStringFromSelector(@selector(setImage:forState:))]) {
                        UIImage *resultImage = [UIImage res_imageWithUIImage:((UIImage *)object)];
                        [self setImage:resultImage forState:state];
                    }
                }];
            }];
        }
        else
        {
            SEL sel = NSSelectorFromString(key);
            if ([obj isKindOfClass:[UIColor class]])
            {
                obj = [UIColor res_colorWithUIColor:((UIColor *)obj)];
            }
            else if ([obj isKindOfClass:[UIImage class]])
            {
                obj = [UIImage res_imageWithUIImage:((UIImage *)obj)];
            }

            [UIView animateWithDuration:0.1f animations:^{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
                [self performSelector:sel withObject:obj];
#pragma clang diagnostic pop
            }];
        }
    }];
}

- (void)res_setTitleColor:(UIColor *)color forState:(UIControlState)state
{
    if (color)
    {
        [self setTitleColor:color forState:state];
        NSString *key = [NSString stringWithFormat:@"%@_%@", @(state),NSStringFromSelector(@selector(setTitleColor:forState:))];
        NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
        [dictionary setObject:color forKey:NSStringFromSelector(@selector(setTitleColor:forState:))];
        [self.resColors setObject:dictionary forKey:key];
    }
}

- (void)res_setBackgroundImage:(UIImage *)image forState:(UIControlState)state
{
    if (image)
    {
        [self setBackgroundImage:image forState:state];
        NSString *key = [NSString stringWithFormat:@"%@_%@", @(state),NSStringFromSelector(@selector(setBackgroundImage:forState:))];
        NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
        [dictionary setObject:image forKey:NSStringFromSelector(@selector(setBackgroundImage:forState:))];
        [self.resColors setObject:dictionary forKey:key];
    }
}

- (void)res_setImage:(UIImage *)image forState:(UIControlState)state
{
    if (image)
    {
        [self setImage:image forState:state];
        NSString *key = [NSString stringWithFormat:@"%@_%@", @(state),NSStringFromSelector(@selector(setImage:forState:))];
        NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
        [dictionary setObject:image forKey:NSStringFromSelector(@selector(setImage:forState:))];
        [self.resColors setObject:dictionary forKey:key];
    }
}

@end
