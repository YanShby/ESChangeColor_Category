//
//  SecondViewController.m
//  ESChangeColor
//
//  Created by 申岩 on 2018/2/22.
//  Copyright © 2018年 申岩. All rights reserved.
//

#import "SecondViewController.h"
#import "ESThemeManager.h"
#import "UIColor+TBResColor.h"
#import "UIView+TBCResColor.h"
#import "UILabel+TBCResColor.h"
#import "UIImageView+TBCResColor.h"
#import "UIBarButtonItem+TBCResColor.h"
#import "NSMutableAttributedString+TBCResColor.h"
#import "UIPageControl+TBCResColor.h"

#import "YYLabel.h"
#import "YYLabel+TBCResColor.h"

#import "UIColor+TBCResManager.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // backgroundColor of vc's view
    self.view.res_backgroundColor = [UIColor bgLineColorForKey:@"D"];

    // NavBar's right button
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"ChangeMe" style:UIBarButtonItemStyleDone target:self action:@selector(change)];
    self.navigationItem.rightBarButtonItem.res_tintColor = [UIColor linkTipColorForKey:@"A"];

    // NavBar's tint color
    self.navigationController.navigationBar.res_tintColor = [UIColor linkTipColorForKey:@"A"];

    // UILable's attributedString
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 200)];
    NSAttributedString *string = [self generateAttributedString:@"attributed string"];
    lable.res_attributedText = string;
    [self.view addSubview:lable];

    // PageControl
    UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(100, 200, 100, 50)];
    [self.view addSubview:pageControl];
    pageControl.numberOfPages = 10;
    pageControl.currentPage = 5;
    pageControl.res_currentPageIndicatorTintColor = [UIColor linkTipColorForKey:@"E"];
    pageControl.res_pageIndicatorTintColor = [UIColor otherColorForKey:@"C"];

    // YYLabel's string
    YYLabel *yyLabel = [[YYLabel alloc] initWithFrame:CGRectMake(100, 250, 200, 30)];
    yyLabel.text = @"YYLabel Test!";
    yyLabel.res_textColor = [UIColor contColorForKey:@"E"];
    [self.view addSubview:yyLabel];

    // YYLabel's attributedString
    YYLabel *yyLabel1 = [[YYLabel alloc] initWithFrame:CGRectMake(100, 300, 200, 30)];
    [self.view addSubview:yyLabel1];

    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:@"YYLabel test again"];
    [attributedString res_yy_setColor:[UIColor linkTipColorForKey:@"A"] range:NSMakeRange(0, 3)];
    [attributedString res_yy_setColor:[UIColor contColorForKey:@"B"] range:NSMakeRange(4, 7)];
    [attributedString res_yy_setUnderlineColor:[UIColor linkTipColorForKey:@"A"] range:NSMakeRange(0, 7)];

    yyLabel1.res_attributedText = attributedString;
}

- (NSAttributedString *)generateAttributedString:(NSString *)attributedString
{
    NSString *string = [NSString stringWithFormat:@"Let's test %@ with night mode!",attributedString];
   
    NSMutableAttributedString *mutableAttributeString = [[NSMutableAttributedString alloc] initWithString:string];
    [mutableAttributeString addForegroundColor:[UIColor linkTipColorForKey:@"B"] range:NSMakeRange(0, 5)];
    [mutableAttributeString addForegroundColor:[UIColor linkTipColorForKey:@"A"] range:NSMakeRange(6, 10)];
    [mutableAttributeString addForegroundColor:[UIColor linkTipColorForKey:@"C"] range:NSMakeRange(20, 6)];
    [mutableAttributeString addBackgroundColor:[UIColor linkTipColorForKey:@"D"] range:NSMakeRange(30, 10)];
    return mutableAttributeString;
}

- (void)change
{
    [[ESThemeManager sharedInstance] changeStyle];
}

- (void)popme
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    NSLog(@"dealloc ----");
}

@end
