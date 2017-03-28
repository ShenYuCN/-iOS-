//
//  AbstractSoftware.h
//  桥接模式
//
//  Created by ShenYu on 2017/3/17.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    kSoftwareMp3,
    kSoftwareGames,
    kSoftwareVideo,
} kSoftwareType;


@interface AbstractSoftware : NSObject


/* 执行命令 */
//- (void)loadSoftWare:(kSoftwareType)softType;

- (void)loadSoftWare;

@end
