//
//  SYSubFactory.m
//  工厂模式
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "SYSubFactory.h"
#import "SYSub.h"
@implementation SYSubFactory

- (id<SYCalculate>)creatCalculate{

    return [[SYSub alloc] init];
}

@end
