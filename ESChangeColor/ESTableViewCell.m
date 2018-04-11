//
//  ESTableViewCell.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/22.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "ESTableViewCell.h"
#import "UIView+TBCResColor.h"
#import "UIColor+TBResColor.h"
#import "UILabel+TBCResColor.h"
#import "UIImageView+TBCResColor.h"
#import "ESThemeManager.h"
#import "UIButton+TBCResColor.h"

@implementation ESTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
//#ifdef USE_BLOCK
//        self.label = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 270, 50)];
//        self.label.numberOfLines = 0;
//        self.label.res_textColor = [UIColor normalColor:[UIColor blackColor] nightColor:[UIColor whiteColor]];
//        self.label.lineBreakMode = NSLineBreakByCharWrapping;
//        [self.contentView addSubview:self.label];
//
//        self.imageV = [[UIImageView alloc] res_initWithImage:[UIImage normalImage:[UIImage imageNamed:@"day"] nightImage:[UIImage imageNamed:@"night"]]];
//        self.imageV.frame = CGRectMake(300, 15, 20, 20);
//        [self.contentView addSubview:self.imageV];
//
//        self.selectionStyle = UITableViewCellSelectionStyleNone;
//#else
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 270, 50)];
        self.label.numberOfLines = 0;
        self.label.res_textColor = [UIColor whiteColor];
        self.label.lineBreakMode = NSLineBreakByCharWrapping;
        [self.contentView addSubview:self.label];
        
        self.imageV = [[UIImageView alloc] res_initWithImage:[UIImage res_imageWithNormalKey:@"day" nightKey:@"night"]];
        self.imageV.frame = CGRectMake(300, 15, 20, 20);
        [self.contentView addSubview:self.imageV];

        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(150, 0, 100, 50)];
        [button setTitle:@"button" forState:UIControlStateNormal];
        [button res_setTitleColor:[UIColor contColorForKey:@"A" needsNightMode:NO] forState:UIControlStateNormal];
        [button res_setTitleColor:[UIColor contColorForKey:@"B"] forState:UIControlStateHighlighted];
        [button setRes_backgroundColor:[UIColor linkTipColorForKey:@"A"]];
        [button res_setImage:[UIImage res_imageWithNormalKey:@"day" nightKey:@"night"] forState:UIControlStateNormal];
        [self.contentView addSubview:button];
//#endif
    }
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {
    [super setHighlighted:highlighted animated:animated];

    if (highlighted) {
        self.contentView.res_backgroundColor = [UIColor bgLineColorForKey:@"C"];
    } else {
        self.contentView.res_backgroundColor = [UIColor colorWithNormalHex:@"0x0ba111" nightHex:@"0x1111bb"];
    }

}

@end
