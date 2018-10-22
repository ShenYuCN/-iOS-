//
//  Subject_A.m
//  观察者模式
//
//  Created by ShenYu on 2018/10/22.
//  Copyright © 2018 ShenYu. All rights reserved.
//

#import "RealSubject.h"

@implementation RealSubject
-(NSMutableSet *) observerCollection
{
    if (_observerCollection == nil)
        _observerCollection = [[NSMutableSet alloc] init];
    
    return _observerCollection;
}

-(void)addObserver:(id<MyObserver>)observer
{
    [self.observerCollection addObject:observer];
}
-(void)removeObserver:(id<MyObserver>)observer
{
    [self.observerCollection removeObject:observer];
}

-(void)notifyObservers:(NSString *)message
{
    NSLog(@"Subject say: %@",message);
    for (id<MyObserver> observer in self.observerCollection) {
        [observer notify:message];
    }
}

@end
