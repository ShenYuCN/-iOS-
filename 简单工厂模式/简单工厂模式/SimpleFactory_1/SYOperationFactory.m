//
//  SYOperationFactory.m
//  简单工厂模式
//
//  Created by ShenYu on 2017/3/14.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "SYOperationFactory.h"
#import "SYOperationAdd.h"
#import "SYOperationSub.h"
@implementation SYOperationFactory
+ (SYOperation *)creteOperation:(OperationType)operationType{
    switch (operationType) {
        case OperationAdd:
            return [[SYOperationAdd alloc] init];
            
        case OperationSub:
            return [[SYOperationSub alloc] init];
            
        default:
            return nil;
    }
}
@end
