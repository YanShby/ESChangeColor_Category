//
//  UILabel+TBCResColor.h
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/23.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSObject+TBCResColor.h"

@interface UILabel (TBCResColor)

@property (nonatomic, strong) UIColor * res_textColor;
@property (nonatomic, strong) UIColor * res_shadowColor;
@property (nonatomic, strong) UIColor * res_highlightedTextColor;
@property (nonatomic, strong) NSAttributedString *res_attributedText;

@end
