//
//  Customer.h
//  代理模式
//
//  Created by ShenYu on 2017/3/16.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Customer;
@protocol CustomerDelegate <NSObject>

@required

- (void)customer:(Customer *)customer buyItemCount:(NSInteger)count;

@end


/* 顾客 */
@interface Customer : NSObject

@property (nonatomic,weak) id<CustomerDelegate> delegate;

/* 买货数量 */
- (void)butItemCount:(NSInteger)count;
@end
