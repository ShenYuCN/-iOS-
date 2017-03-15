//
//  ViewController.m
//  工厂模式
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//


/**
 工厂模式也有两种方式
 
 1:继承父类
 2:遵守协议
 */

#import "ViewController.h"

#import "SYAddFactory.h"


#import "A_SYAddFactory.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 遵守协议  头文件只需要导入 SYAddFactory.h
    id<SYFactory> factory = [[SYAddFactory alloc] init];
    id<SYCalculate> calculate = [factory creatCalculate];
    
    NSLog(@"%f",[calculate getResultWithNumberA:100 numberB:50]);
    
    
    // 继承工厂类父类   头文件只需要导入 A_SYAddFactory.h
    A_SYFactory *factory2 = [[A_SYAddFactory alloc] init];
    A_SYCalculate *cal    = [factory2 creatCalculate];
    NSLog(@"%f",[cal getResultWithNumberA:200 numberB:300]);
    
    
}



@end
