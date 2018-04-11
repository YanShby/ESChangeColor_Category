//
//  YYLabel+TBCResColor.h
//  ESChangeColor
//
//  Created by 申岩 on 2018/3/30.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "YYLabel.h"
#import "NSObject+TBCResColor.h"

@interface YYLabel (TBCResColor)

@property (nonatomic, strong) UIColor * res_textColor;
@property (nonatomic, strong) UIColor * res_shadowColor;

@property (nonatomic, strong) NSAttributedString *res_attributedText;

@end
