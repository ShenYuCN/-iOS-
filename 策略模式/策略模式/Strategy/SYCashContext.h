//
//  SYCashContext.h
//  策略模式
//
//  Created by ShenYu on 2017/3/13.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SYCashProtocol.h"

/**	Context上下文
 *  维护一个对Strategy对象的引用
 *  用一个ConcreteStrategy配置
 */

@interface SYCashContext : NSObject
typedef NS_ENUM(NSInteger,SYCashType){
    CashTypeNormal,
    CashTypeRebate,
    CashTypeReturn
};

/**
 初始化

 @param cashBase 实现SYCashProtocol协议的对象
 */
- (instancetype)initWithCashProtocol:(id<SYCashProtocol>)cashBase;

/**
 初始化

 @param cashType 根据枚举类型
 */
- (instancetype)initWithCashType:(SYCashType)cashType;



/**
 返回最终消费

 @param moneySum 原总额
 @return 折后总额
 */
- (CGFloat)getResult:(CGFloat)moneySum;
@end
