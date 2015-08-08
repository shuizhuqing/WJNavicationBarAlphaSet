//
//  WJNavigationController.h
//  导航栏透明度设置
//
//  Created by 孙文君 on 15/8/7.
//  Copyright (c) 2015年 sunwenjun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WJNavigationController : UINavigationController

@property(nonatomic,strong)UIColor *barBGColor;//设置bar的背景色

@property(nonatomic,assign)CGFloat  barAlpha;//bar的透明度


@end
