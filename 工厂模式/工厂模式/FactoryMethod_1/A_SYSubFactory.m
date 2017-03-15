//
//  A_SYSubFactory.m
//  工厂模式
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "A_SYSubFactory.h"
#import "A_SYSub.h"
@implementation A_SYSubFactory

- (A_SYCalculate *)creatCalculate{

    return [[A_SYSub alloc] init];
}

@end
