//
//  SYDecoratorPhone.h
//  装饰模式
//
//  Created by ShenYu on 2017/3/17.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "SYAbstractPhone.h"
#import "SYAbstractPhone.h"

/* 装饰类 基类  Decorator */
@interface SYDecoratorPhone : SYAbstractPhone
- (void)setComponent:(SYAbstractPhone *)component;
@end
