//
//  RealObserver_B.m
//  观察者模式
//
//  Created by ShenYu on 2018/10/22.
//  Copyright © 2018 ShenYu. All rights reserved.
//

#import "RealObserver_B.h"

@implementation RealObserver_B
- (void)notify:(NSString *)message{
    NSLog(@"B receive message: %@",message);
}
@end
