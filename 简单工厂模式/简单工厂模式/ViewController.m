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
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 缺陷: 工厂类包含判断逻辑，违反开闭原则。
    // 新加运算方法:1、继承抽象产品类 2、增加工厂类的逻辑判断
    
    
    // 动态实例化 具体产品类
    SYOperation *operation = [SYOperationFactory creteOperation:OperationAdd];
    NSLog(@"%f",[operation getResultWithNumberA:100 numberB:50]);

    
}

@end
