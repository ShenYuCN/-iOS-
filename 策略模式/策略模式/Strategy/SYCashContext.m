//
//  SYCashContext.m
//  策略模式
//
//  Created by ShenYu on 2017/3/13.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "SYCashContext.h"
#import "SYCashNormal.h"
#import "SYCashRebate.h"
#import "SYCashReturn.h"

@interface SYCashContext()
@property (nonatomic,strong) id<SYCashProtocol> cashBase;
@end

@implementation SYCashContext

/**	通过构造方法，传入具体的收费策略  */
- (instancetype)initWithCashProtocol:(id<SYCashProtocol>)cashBase{
    if ((self = [super init])) {
        self.cashBase = cashBase;
    }
    return self;

}
- (instancetype)initWithCashType:(SYCashType)cashType{
    if (((self = [super init]))) {
        switch (cashType) {
            case CashTypeNormal:
                self.cashBase = [[SYCashNormal alloc] init];
                break;
            case CashTypeRebate:
                self.cashBase = [[SYCashRebate alloc] initWithRebate:0.7];
                break;
            case CashTypeReturn:
                self.cashBase = [[SYCashReturn alloc] initWithCondition:100 returnMoney:20];
                break;
            default:
                break;
        }
    }
    return self;
}

- (CGFloat)getResult:(CGFloat)moneySum{
    return [self.cashBase acceptCash:moneySum];
//    return 0;
}
@end
