//
//  ViewController.m
//  装饰模式
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

/*  Decorator（装饰模式）：动态地给一个对象添加一些额外的职责。就  扩展功能  而言，它比生成子类方式更为灵活。

  Cocoa 框架已经实现的装饰模式---分类
 
 
  还一种实现就是UML图所示：
  代码:http://www.tuicool.com/articles/jyeU3mu
  创建decorator接口 继承  Component，
  通过-(void)SetComponents:(Components*)component; 将component对象保存成自己的成员变量，再重写Component的父类方法时，使用成员变量的方法
 */

#import "ViewController.h"
#import "GameCtrl.h"

#import "DecoratorGameCtrl.h"
#import "GameCtrl+MoreCommond.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    GameCtrl *ctrl = [[GameCtrl alloc] init];
    
    // 常规方法
    [ctrl up];
    [ctrl down];
    
    // 分类
    [ctrl left];
    [ctrl right];
    NSLog(@"----end---");
    
    
    // 装饰模式方法
    DecoratorGameCtrl *decorator  = [[DecoratorGameCtrl alloc] init];
    [decorator cheat];
}

@end
