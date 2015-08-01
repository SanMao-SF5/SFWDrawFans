//
//  NSObject+DrawFan.m
//  画圆饼
//
//  Created by 沈方武 on 15/7/13.
//  Copyright (c) 2015年 沈方武. All rights reserved.
//

#import "NSObject+DrawFan.h"

@implementation NSObject (DrawFan)

- (void)drawFansWithRadius:(CGFloat)radius Center:(CGPoint)center Dates:(NSArray *)date{
    
    // 获取上下文
    //    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 确定扇形的基本参数
    CGFloat startAngle = 0;
    CGFloat angle = 0;
    CGFloat endAngle = 0;
    
    CGFloat tatal = 0;
    for (NSNumber *num in date) {
        tatal += num.intValue;
    }
    
    for (NSNumber *number in date) {
        // 根据取出来的数字确定圆弧角度
        startAngle = endAngle;
        angle = number.intValue/tatal * (M_PI * 2);
        endAngle = startAngle + angle;
        
        // 描述圆弧
        UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:YES];
        
        [path addLineToPoint:center];
        
        [[self setColor] set];
        
        [path fill];
        // 描边
        [path stroke];
        
    }
    
}

- (UIColor *)setColor{
    
    CGFloat r = arc4random_uniform(256) / 255.0;
    CGFloat g = arc4random_uniform(256) / 255.0;
    CGFloat b = arc4random_uniform(256) / 255.0;
    // 0 ~ 255 / 255.0
    //    if (r != g != b) {
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
    //    }
    
}

@end
