//
//  ViewController.m
//  Strategy
//
//  Created by zhengzeqin on 2017/4/6.
//  Copyright © 2017年 addcn. All rights reserved.
//

#import "ViewController.h"
#import "PayModeStrategyContext.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PayModeStrategyContext *context = [[PayModeStrategyContext alloc]initWithStrategyType:StrategyTypeWeixin];
    [context pay];
}




@end
