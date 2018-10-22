//
//  Subject_A.h
//  观察者模式
//
//  Created by ShenYu on 2018/10/22.
//  Copyright © 2018 ShenYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MySubject.h"

@interface RealSubject : NSObject<MySubject>
@property (nonatomic, strong) NSMutableSet *observerCollection;

@end
