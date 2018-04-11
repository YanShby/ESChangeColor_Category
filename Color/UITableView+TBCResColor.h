//
//  UITableView+TBCResColor.h
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/23.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSObject+TBCResColor.h"

@interface UITableView (TBCResColor)

@property (nonatomic, strong) UIColor * res_separatorColor;
@property (nonatomic, strong) UIColor * res_sectionIndexColor;
@property (nonatomic, strong) UIColor * res_sectionIndexBackgroundColor;
@property (nonatomic, strong) UIColor * res_sectionIndexTrackingBackgroundColor;

@end
