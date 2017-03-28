//
//  SYDecoratorPhone.m
//  装饰模式
//
//  Created by ShenYu on 2017/3/17.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "SYDecoratorPhone.h"
@interface SYDecoratorPhone()
@property (nonatomic,strong) SYAbstractPhone *abstractPhone;
@end

@implementation SYDecoratorPhone
// 引用对象
- (void)setComponent:(SYAbstractPhone *)component{
    self.abstractPhone = component;
}

// 装饰类的方法  转换成 引用对象的方法
- (NSString *)name{
    return [self.abstractPhone name];
}
@end
