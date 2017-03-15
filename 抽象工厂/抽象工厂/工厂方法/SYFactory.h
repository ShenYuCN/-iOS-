//
//  SYFactory.h
//  抽象工厂
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SYPad.h"
#import "SYPhone.h"
/* 抽象工厂 */
@protocol SYFactory <NSObject>
- (id<SYPhone>)createPhone;
- (id<SYPad>)createPad;
@end
