//
//  SYCashReturn.h
//  策略模式
//
//  Created by ShenYu on 2017/3/13.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SYCashProtocol.h"
@interface SYCashReturn : NSObject <SYCashProtocol>

/**
 计算返利结果

 @param condition 满100
 @param returnMoney 减20
 @return  最终结果
 */
- (instancetype)initWithCondition:(CGFloat)condition returnMoney:(CGFloat)returnMoney;
@end
