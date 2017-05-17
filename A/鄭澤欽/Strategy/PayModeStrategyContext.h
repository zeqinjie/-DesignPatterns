//
//  PayModeStrategyContext.h
//  Strategy
//
//  Created by zhengzeqin on 2017/4/6.
//  Copyright © 2017年 addcn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PayModeStrategy.h"
typedef NS_ENUM(NSInteger ,StrategyType) {
    StrategyTypeWeixin,
    StrategyTypeZhifubao,
};
@interface PayModeStrategyContext : NSObject
- (instancetype)initWithStrategyType:(StrategyType)strategyType;

- (void)pay;
@end
