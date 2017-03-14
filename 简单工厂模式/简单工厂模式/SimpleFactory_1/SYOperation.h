//
//  SYOperation.h
//  简单工厂模式
//
//  Created by ShenYu on 2017/3/14.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    OperationAdd,
    OperationSub
} OperationType;

//typedef NS_ENUM(NSUInteger, OperationType) {
//    OperationAdd,
//    OperationSub
//};

/* 运算父类，抽象类  抽象产品角色(Product) */
@interface SYOperation : NSObject

- (CGFloat)getResultWithNumberA:(CGFloat)numberA numberB:(CGFloat)numberB;

@end
