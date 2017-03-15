//
//  SYCalculate.h
//  简单工厂模式
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    CalculateAdd,
    CalculateSub
} CalculateType;

/* 定义一个协议，类似java的接口，以便其他类遵守这个协议，同时实现协议方法 */

// 计算器接口
@protocol SYCalculate <NSObject>

- (CGFloat)getResultWithNumberA:(CGFloat)numberA numberB:(CGFloat)numberB;
@end
