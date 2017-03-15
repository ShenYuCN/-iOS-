//
//  SYFactory.h
//  工厂模式
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SYCalculate.h"

// 以遵守协议的方式实现


/* 工厂接口 */
@protocol SYFactory <NSObject>

/* 工厂方法，用于创建计算器实例 */
- (id<SYCalculate>)creatCalculate;

@end
