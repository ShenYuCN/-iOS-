//
//  ViewController.m
//  观察者模式
//
//  Created by ShenYu on 2018/10/22.
//  Copyright © 2018 ShenYu. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"


#import "MySubject.h"
#import "RealSubject.h"
#import "RealObserver_B.h"
#import "RealObserver_A.h"


@interface ViewController ()
@property (nonatomic,strong) NSString *name;
@property (nonatomic, strong) Student *student;
@end


#define kKeyPath @"name"
#define kStudentKeyPath @"age"
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RealSubject *realSubject = [[RealSubject alloc] init];
    
    RealObserver_A *ob_a = [[RealObserver_A alloc] init];
    RealObserver_B *ob_b = [[RealObserver_B alloc] init];
    
    [realSubject addObserver:ob_a];
    [realSubject addObserver:ob_b];

    [realSubject notifyObservers:@"hello!"];
    
    
    
    self.name = @"aaa";
    [self addObserver:self forKeyPath:kKeyPath options:NSKeyValueObservingOptionNew| NSKeyValueObservingOptionOld context:nil];

    
    
    self.student = [[Student alloc] init];
    self.student.age = @"12";
    
    [self.student addObserver:self forKeyPath:kStudentKeyPath options:NSKeyValueObservingOptionNew| NSKeyValueObservingOptionOld context:nil];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%s",__func__);

    self.name = @"ccc";
    self.student.age = @"20";
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    if ([keyPath isEqualToString:kKeyPath]) {
        NSLog(@"新的值--%@",change[@"new"]);
        NSLog(@"以前的值--%@",change[@"old"]);

    }

    if ([keyPath isEqualToString:kStudentKeyPath] && [object isEqual:self.student]) {
        NSLog(@"新的值--%@",change[@"new"]);
        NSLog(@"以前的值--%@",change[@"old"]);
    }
}
- (void)dealloc{
    
    [self removeObserver:self forKeyPath:kKeyPath];
    
}
@end
