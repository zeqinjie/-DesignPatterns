//
//  ViewController.m
//  KVO
//
//  Created by zhengzeqin on 2017/3/15.
//  Copyright © 2017年 addcn. All rights reserved.
//

#import "ViewController.h"
@interface Persion : NSObject
@property (assign, nonatomic) NSInteger age;//属性
@end
@implementation Persion
@end
@interface ViewController ()
@property (nonatomic, strong) Persion *persion;
@end

@implementation ViewController
/*
 KVO 原理
 系统会在运行时期（runtime OC 动态特性方法objc_allocateClassPair）动态地创建一个继承Persion类的子类
 在这个派生类中,重写基类中任何被观察属性的setter方法,在setter方法中实现真正的通知机制.
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.persion = [[Persion alloc]init];
    //注册监听
    [self.persion addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
    self.persion.age = 100;//改变对象属性值 观察者能获取到改对象的改变的前后的值
}

#pragma mark - dealloc
- (void)dealloc{
    //对象销毁前 移除监听
    [self.persion removeObserver:self forKeyPath:@"age"];
}

#pragma mark - observe
//监听回调
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    if ([keyPath isEqualToString:@"age"]) {
        NSLog(@"chaneg = %@",change);//chang  获取到改变的值
    }
// chang 字典的key
//    new = 100;//改变后值
//    old = 0;  //改变前
}

@end
