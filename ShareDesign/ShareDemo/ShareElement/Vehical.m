//
//  Vehical.m
//  ShareElement
//
//  Created by 郑泽钦 on 2017/5/16.
//  Copyright © 2017年 zhengzeqin. All rights reserved.
//

#import "Vehical.h"

@implementation Vehical
- (instancetype)initWithType:(VehicalType)vehicalType{
    if (self = [super init]) {
        
    }
    return self;
}

- (void)descriptOwner{
    NSLog(@"%@ 拥有 %@",self.userName,self.vehicalName);
}

@end

@implementation Car

@end

@implementation Bus

@end

@implementation Bike


@end

@implementation Ship

@end

@implementation Train


@end
