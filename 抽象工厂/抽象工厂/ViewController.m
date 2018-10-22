//
//  ViewController.m
//  抽象工厂
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//


//抽象工厂模式 和 工厂方法模式的区别就在于需要创建对象的复杂程度上。
//抽象工厂模式是三个模式里面最为抽象、最具一般性的。

//每个具体工厂类可以创建多个具体产品类的实例
//面向多个产品等级结构
//包含多个抽象产品类

#import "ViewController.h"
#import "AppleFactory.h"
#import "SumsangFactory.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 三星产品  和 苹果产品是  两个不同的产品树
    // 三星手机  和 苹果手机 是一个产品族
    // 三星平板  和 苹果平板 是一个产品族
    
    
    id<SYFactory> factory = [[AppleFactory alloc] init];
    id<SYPhone> phone = [factory createPhone];          //    苹果 工厂  创造  苹果手机
    [phone callWithNumber:[[PhoneNumber alloc] init]];  // 用 苹果 手机 给一个号码 打电话

    
    id<SYFactory> factory2 = [[SumsangFactory alloc] init];
    id<SYPad>     pad = [factory2 createPad];  // 三星 工厂  生产  三星Pad
    [pad watchMovie];   // 用 三星 平板 看电影
    
}

@end
