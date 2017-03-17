//
//  ViewController.m
//  代理模式
//
//  Created by ShenYu on 2017/3/16.
//  Copyright © 2017年 ShenYu. All rights reserved.
//


/**
 降低了与耦合对象的耦合度

 当一个类的某些功能需要由别的类来实现，但是又不确定具体会是哪个类实现
 */
#import "ViewController.h"
#import "Customer.h"


@interface ViewController ()<CustomerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Customer *customer = [[Customer alloc] init];
    customer.delegate = self;
    [customer butItemCount:5];
}

- (void)customer:(Customer *)customer buyItemCount:(NSInteger)count{

    NSLog(@"VC receive %d",count);
}

@end
