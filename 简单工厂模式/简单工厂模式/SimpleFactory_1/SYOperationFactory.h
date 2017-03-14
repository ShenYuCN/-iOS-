//
//  SYOperationFactory.h
//  简单工厂模式
//
//  Created by ShenYu on 2017/3/14.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SYOperation.h"

/* 工厂类角色 Creator */
@interface SYOperationFactory : NSObject

/* 创建运算实例 */
+ (SYOperation *)creteOperation:(OperationType)operationType;

@end
