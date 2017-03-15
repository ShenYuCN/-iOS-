//
//  SYAddFactory.m
//  工厂模式
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "SYAddFactory.h"
#import "SYAdd.h"
@implementation SYAddFactory
- (id<SYCalculate>)creatCalculate{

    return [[SYAdd alloc] init];
}
@end
