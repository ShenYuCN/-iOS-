//
//  SYCashRebate.h
//  策略模式
//
//  Created by ShenYu on 2017/3/13.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SYCashProtocol.h"
@interface SYCashRebate : NSObject <SYCashProtocol>

/**
 通过折扣率计算最终结果

 @param rebate 折扣率
 @return 结果
 */
- (instancetype)initWithRebate:(CGFloat)rebate;
@end
