//
//  SYCashProtocol.h
//  策略模式
//
//  Created by ShenYu on 2017/3/13.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/* 定义一个协议，类似java的接口，以便其他类遵守这个协议，同时实现协议方法 */
@protocol SYCashProtocol <NSObject>


/**
 返回计算后的金额

 @param cash 原始金额
 @return 最终金额
 */
- (CGFloat)acceptCash:(CGFloat)cash;

@end
