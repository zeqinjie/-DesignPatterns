//
//  PayModeStrategy.m
//  Strategy
//
//  Created by zhengzeqin on 2017/4/6.
//  Copyright © 2017年 addcn. All rights reserved.
//

#import "PayModeStrategy.h"

@implementation PayModeStrategy

- (void)pay{
    NSLog(@"PayModeStrategy");
}

@end


@implementation WeixinPayModeStrategy

- (void)pay{
    NSLog(@"WeixinPayModeStrategy");
}

@end


@implementation ZhifubaoPayModeStrategy

- (void)pay{
    NSLog(@"ZhifubaoPayModeStrategy");
}

@end
