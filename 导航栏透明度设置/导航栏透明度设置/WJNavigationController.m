//
//  WJNavigationController.m
//  导航栏透明度设置
//
//  Created by 孙文君 on 15/8/7.
//  Copyright (c) 2015年 sunwenjun. All rights reserved.
//

#import "WJNavigationController.h"
#import "UIImage+Color.h"
@interface WJNavigationController ()
@property(nonatomic,weak)UIView *backView;

@end

@implementation WJNavigationController

-(instancetype)initWithRootViewController:(UIViewController *)rootViewController
{
    if (self = [super initWithRootViewController:rootViewController]) {
        
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = [UIColor redColor];
        CGRect oldF = self.navigationBar.frame;
        view.frame = CGRectMake(oldF.origin.x, oldF.origin.y, oldF.size.width, oldF.size.height+20);
        [self.view insertSubview:view belowSubview:self.navigationBar];
        self.backView = view;
        
        [self.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor clearColor]] forBarMetrics:UIBarMetricsCompact];
        self.navigationBar.layer.masksToBounds  = YES;
        
    }
    return self;

}
//设置bar的背景色
-(void)setBarBGColor:(UIColor *)color
{
    _barBGColor = color;
    
    self.backView.backgroundColor = color;

}

//设置bar 的透明度
-(void)setBarAlpha:(CGFloat)barAlpha
{
    self.backView.alpha = barAlpha;
}

@end
