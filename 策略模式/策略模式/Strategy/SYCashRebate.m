//
//  SYCashRebate.m
//  策略模式
//
//  Created by ShenYu on 2017/3/13.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "SYCashRebate.h"
@interface SYCashRebate()
@property (nonatomic,assign) CGFloat rebate;
@end

@implementation SYCashRebate
- (instancetype)initWithRebate:(CGFloat)rebate{
    if ((self = [super init])) {
        self.rebate = rebate;
    }
    return self;
}
- (CGFloat)acceptCash:(CGFloat)cash{
    return self.rebate * cash;
}
@end
