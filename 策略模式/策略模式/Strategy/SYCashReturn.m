//
//  SYCashReturn.m
//  策略模式
//
//  Created by ShenYu on 2017/3/13.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "SYCashReturn.h"
#import "SYCashProtocol.h"

@interface SYCashReturn()
@property (nonatomic,assign) CGFloat condition;
@property (nonatomic,assign) CGFloat returnMoney;

@end

@implementation SYCashReturn 
- (instancetype)initWithCondition:(CGFloat)condition returnMoney:(CGFloat)returnMoney{
    if ((self = [super init])) {
        self.condition = condition;
        self.returnMoney = returnMoney;
    }
    return  self;
}

- (CGFloat)acceptCash:(CGFloat)cash{
    return  cash >= self.condition ? cash - (cash / self.condition) * self.returnMoney: cash;
}
@end
