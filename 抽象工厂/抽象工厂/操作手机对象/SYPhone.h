//
//  SYPhone.h
//  抽象工厂
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneNumber.h"
@protocol SYPhone <NSObject>

/* 用手机打电话 */
- (void)callWithNumber:(PhoneNumber *)phoneNumber;
@end
