//
//  SYDecoratorGPSPhone.m
//  装饰模式
//
//  Created by ShenYu on 2017/3/17.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "SYDecoratorGPSPhone.h"

@implementation SYDecoratorGPSPhone


- (NSString *)name{
    return [NSString stringWithFormat:@"%@ add GPS",[super name]];
}
@end
