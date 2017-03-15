//
//  A_SYFactory.h
//  工厂模式
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "A_SYCalculate.h"

@interface A_SYFactory : NSObject
- (A_SYCalculate *)creatCalculate;
@end
