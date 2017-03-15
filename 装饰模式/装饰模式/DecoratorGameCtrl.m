//
//  DecoratorGameCtrl.m
//  装饰模式
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "DecoratorGameCtrl.h"
#import "GameCtrl.h"
@interface DecoratorGameCtrl()
@property (nonatomic,strong) GameCtrl *ctrl;
@end

@implementation DecoratorGameCtrl
- (instancetype)init{
    if (self = [super init]) {
        
        // 装饰对象包含一个真实对象的引用
        self.ctrl = [[GameCtrl alloc] init];
    }
    return self;
}
- (void)cheat{
    [self.ctrl up];
    [self.ctrl up];
    [self.ctrl up];
    [self.ctrl down];
    [self.ctrl down];
    [self.ctrl down];
}
@end
