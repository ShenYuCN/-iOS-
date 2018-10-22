//
//  Subject.h
//  观察者模式
//
//  Created by ShenYu on 2018/10/22.
//  Copyright © 2018 ShenYu. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "MyObserver.h"
/*
Subject
接口或抽象类
主题也叫被观察者


RealSubject
真实的主题类
具体的被观察者，内部维护了观察者的列表

*/
@protocol MySubject <NSObject>
- (void)addObserver:(id<MyObserver>)observer;
- (void)removeObserver:(id<MyObserver>)observer;
- (void)notifyObservers:(NSString *) message;

@end
