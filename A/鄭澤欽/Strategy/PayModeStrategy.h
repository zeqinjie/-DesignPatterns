//
//  PayModeStrategy.h
//  Strategy
//
//  Created by zhengzeqin on 2017/4/6.
//  Copyright © 2017年 addcn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PayModeStrategy : NSObject
//支付
- (void)pay;
@end



@interface WeixinPayModeStrategy : PayModeStrategy

@end


@interface ZhifubaoPayModeStrategy : PayModeStrategy

@end
