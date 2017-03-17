
//
//  Customer.m
//  代理模式
//
//  Created by ShenYu on 2017/3/16.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "Customer.h"

@implementation Customer

- (void)butItemCount:(NSInteger)count{
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(customer:buyItemCount:)]) {
        [self.delegate customer:self buyItemCount:count];
    }
    
}

@end
