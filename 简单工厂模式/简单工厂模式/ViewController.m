//
//  ViewController.m
//  简单工厂模式
//
//  Created by ShenYu on 2017/3/14.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

/**
 简单工厂模式有两种方式
 
 1:继承父类
 2:遵守协议
 */
#import "ViewController.h"
#import "SYOperationFactory.h"

#import "SYCalculateFactory.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 缺陷: 工厂类包含判断逻辑，违反开闭原则。
    // 新加运算方法:1、继承抽象产品类 2、增加工厂类的逻辑判断
    
    
    // 工厂类包含逻辑判断，根据客户端的选择条件，动态实例化 具体产品类，对于客户端来讲，去除了与具体产品的依赖。
    // 把type传递给工厂，工厂就会生产对应的实例
    SYOperation *operation = [SYOperationFactory creteOperation:OperationAdd];
    NSLog(@"继承: %f",[operation getResultWithNumberA:100 numberB:50]);

    
    id<SYCalculate> cal = [SYCalculateFactory createCalculateWithType:CalculateSub];
    NSLog(@"协议: %f",[cal getResultWithNumberA:100 numberB:50]);
    
}

@end
