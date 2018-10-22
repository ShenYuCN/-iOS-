
//
//  RealObserver.m
//  观察者模式
//
//  Created by ShenYu on 2018/10/22.
//  Copyright © 2018 ShenYu. All rights reserved.
//

#import "RealObserver_A.h"

@implementation RealObserver_A
- (void)notify:(NSString *)message{
    NSLog(@"A receive message: %@",message);
}
@end
