//
//  AppleFactory.m
//  抽象工厂
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "AppleFactory.h"
#import "ApplePad.h"
#import "ApplePhone.h"
@implementation AppleFactory
- (id<SYPhone>)createPhone{
    
    NSLog(@"苹果 工厂  创造  苹果手机");
    return [[ApplePhone alloc] init];
    
}
- (id<SYPad>)createPad{
    NSLog(@"苹果 工厂  创造  苹果Pad");
    return [[ApplePad alloc] init];
}
@end
