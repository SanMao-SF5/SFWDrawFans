//
//  NSObject+DrawFan.h
//  画圆饼
//
//  Created by 沈方武 on 15/7/13.
//  Copyright (c) 2015年 沈方武. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSObject (DrawFan)

/**
 *  快速画出扇形图
 *
 *  @param radius 扇形图半径
 *  @param center 圆心
 *  @param date   扇形比例的数组
 */
- (void)drawFansWithRadius:(CGFloat)radius Center:(CGPoint)center Dates:(NSArray *)date;

@end
