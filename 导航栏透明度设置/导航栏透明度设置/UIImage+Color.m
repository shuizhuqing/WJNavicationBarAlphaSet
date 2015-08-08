//
//  UIImage+Color.m
//  导航栏透明度设置
//
//  Created by 孙文君 on 15/8/8.
//  Copyright (c) 2015年 sunwenjun. All rights reserved.
//

#import "UIImage+Color.h"

@implementation UIImage (Color)
+(instancetype)imageWithColor:(UIColor *)color
{
    CGFloat wh = 100;
    //开启图形上下文
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(wh, wh), NO, 0.0);
    
    //设置颜色和范围
    [color set];
    UIRectFill(CGRectMake(0, 0, wh, wh));
    
    //上下文获取图片
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    
    //关闭上下文
    UIGraphicsEndImageContext();
    
    //返回图片
    return img;
}
@end
