//
//  SYCalculateFactory.h
//  简单工厂模式
//
//  Created by ShenYu on 2017/3/15.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SYCalculate.h"

@interface SYCalculateFactory : NSObject

+ (id<SYCalculate>)createCalculateWithType:(CalculateType)type;

@end
