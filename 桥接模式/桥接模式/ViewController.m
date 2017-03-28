//
//  ViewController.m
//  桥接模式
//
//  Created by ShenYu on 2017/3/17.
//  Copyright © 2017年 ShenYu. All rights reserved.
//

#import "ViewController.h"
#import "SamsungPhone.h"
#import "MP3Software.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    AbstractPhone *system = [[SamsungPhone alloc] init];
    system.softWare = [[MP3Software alloc] init];
    [system runSoftware];
    
}


@end
