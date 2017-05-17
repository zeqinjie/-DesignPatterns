//
//  GlobalObject.h
//  ZQSingletonDemo
//
//  Created by zhengzeqin on 2017/2/20.
//  Copyright © 2017年 addcn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GlobalObject : NSObject
+ (GlobalObject *)shareInstance;
@end
