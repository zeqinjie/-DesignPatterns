//
//  PayModeStrategyContext.m
//  Strategy
//
//  Created by zhengzeqin on 2017/4/6.
//  Copyright © 2017年 addcn. All rights reserved.
//

#import "PayModeStrategyContext.h"
@interface PayModeStrategyContext()
@property (strong, nonatomic) PayModeStrategy *payStrategy;
@end
@implementation PayModeStrategyContext

- (instancetype)initWithStrategyType:(StrategyType)strategyType{
    if (self = [super init]) {
        switch (strategyType) {
            case StrategyTypeWeixin:
            {
                self.payStrategy = [[WeixinPayModeStrategy alloc]init];
            }
                break;
            case StrategyTypeZhifubao:
            {
                self.payStrategy = [[ZhifubaoPayModeStrategy alloc]init];
            }
                break;
            default:
                break;
        }
    }
    return self;
}

- (void)pay{
    [self.payStrategy pay];
}

@end
