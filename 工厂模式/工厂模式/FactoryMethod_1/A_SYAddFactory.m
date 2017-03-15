//
//  A_SYAddFactory.m
//  工厂模式
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "A_SYAddFactory.h"
#import "A_SYAdd.h"
@implementation A_SYAddFactory
- (A_SYCalculate *)creatCalculate{

    return [[A_SYAdd alloc] init];
}
@end
