//
//  GlobalObject.m
//  ZQSingletonDemo
//
//  Created by zhengzeqin on 2017/2/20.
//  Copyright © 2017年 addcn. All rights reserved.
//

#import "GlobalObject.h"
static GlobalObject *singleton;
@implementation GlobalObject
+ (GlobalObject *)shareInstance{
    static dispatch_once_t once;
    dispatch_once(&once, ^ {
         singleton = [[super allocWithZone:NULL] init];
    });
    return singleton;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    
    return [GlobalObject shareInstance] ;
    
}

- (instancetype)copyWithZone:(struct _NSZone *)zone {
    
    return [GlobalObject shareInstance] ;
    
}

#if ! __has_feature(objc_arc)
- (oneway void)release{
    
}

- (instancetype)retain{
    return singleton;
}

- (instancetype)autorelease{
    return singleton;
}

- (NSUInteger)retainCount{
    return 1;
}
#endif

@end
