//
//  SYCalculateFactory.m
//  简单工厂模式
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "SYCalculateFactory.h"
#import "SYAdd.h"
#import "SYSub.h"

@implementation SYCalculateFactory
+ (id<SYCalculate>)createCalculateWithType:(CalculateType)type{
    switch (type) {
        case CalculateAdd:
            return [[SYAdd alloc] init];
        case CalculateSub:
            return [[SYSub alloc] init];
        default:
            return nil;
    }

}
@end
