//
//  SumsangFactory.m
//  抽象工厂
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "SumsangFactory.h"
#import "SumsangPad.h"
#import "SumsangPhone.h"
@implementation SumsangFactory

- (id<SYPhone>)createPhone{
    
    NSLog(@"三星 工厂  生产  三星手机");
    return [[SumsangPhone alloc] init];

}
- (id<SYPad>)createPad{
    NSLog(@"三星 工厂  生产  三星Pad");
    return [[SumsangPad alloc] init];
}
@end
