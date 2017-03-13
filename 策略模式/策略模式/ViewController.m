//
//  ViewController.m
//  策略模式
//
//  Created by ShenYu on 2017/3/13.
//  Copyright © 2017年 ShenYu. All rights reserved.
//
//  超市消费： 满减优惠、折扣、正常
//
#import "ViewController.h"
#import "SYCashContext.h"
#import "SYCashReturn.h"
@interface ViewController ()

@end

@implementation ViewController

/**	Strategy（策略模式）：定义一系列的算法,把它们一个个封装起来, 并且使它们可相互替换。本模式使得算法的变化可独立于使用它的客户。  */
- (void)viewDidLoad {
    [super viewDidLoad];

    
    // 通过调用context的getResult方法，就可以得到最终结果，让具体算法和客户分离
    
    SYCashContext *context1 = [[SYCashContext alloc] initWithCashType:CashTypeNormal];
    NSLog(@"%f",[context1 getResult:100]);
    
    SYCashContext *context2 = [[SYCashContext alloc] initWithCashType:CashTypeRebate];
    NSLog(@"%f",[context2 getResult:100]);
    
    SYCashContext *context3 = [[SYCashContext alloc] initWithCashType:CashTypeReturn];
    NSLog(@"%f",[context3 getResult:100]);
    
    
    
    SYCashContext *context4 = [[SYCashContext alloc] initWithCashProtocol:[[SYCashReturn alloc] initWithCondition:100 returnMoney:80]];
    NSLog(@"%f",[context4 getResult:100]);
    
}
@end
