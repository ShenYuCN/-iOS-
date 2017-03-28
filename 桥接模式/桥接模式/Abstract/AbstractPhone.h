//
//  AbstractPhone.h
//  桥接模式
//
//  Created by ShenYu on 2017/3/17.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractSoftware.h"
@interface AbstractPhone : NSObject

/* 抽象对象 软件   (耦合对象） */
@property (nonatomic,strong) AbstractSoftware *softWare;


/* 运行软件 */
- (void)runSoftware;


@end
