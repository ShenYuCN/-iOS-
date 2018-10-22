
//
//  MyObserver.h
//  观察者模式
//
//  Created by ShenYu on 2018/10/22.
//  Copyright © 2018 ShenYu. All rights reserved.
//

/*
 
 IObserver
 观察者接口或抽象类
 抽象出观察者的接口
 
 
 RealObserver
 具体的观察者
 被观察者有更新，观察者立马响应更新
 */

#import <Foundation/Foundation.h>

@protocol MyObserver <NSObject>
- (void)notify:(NSString *)message;
@end
