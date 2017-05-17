//
//  VehicalFactory.m
//  ShareElement
//
//  Created by 郑泽钦 on 2017/5/16.
//  Copyright © 2017年 zhengzeqin. All rights reserved.
//

#import "VehicalFactory.h"

@interface VehicalFactory()
@property (strong, nonatomic) NSMutableDictionary *poolDic;
@end
@implementation VehicalFactory

- (instancetype)init{
    if (self = [super init]) {
        _poolDic = [NSMutableDictionary dictionary];
    }
    return self;
}

- (Vehical *)creatVehicalWithType:(VehicalType)vehicalType{
    //从缓存池中取交通工具对象
    Vehical *vehical = [self.poolDic objectForKey:@(vehicalType)];
    if (vehical == nil) {
        //如果空就创建该交通工具类型对象
        switch (vehicalType) {
            case VehicalTypeCar:
            {
                vehical = [Car new];
            }
                break;
            case VehicalTypeBus:
            {
                vehical = [Bus new];
            }
                break;
            case VehicalTypeBike:
            {
                vehical = [Bike new];
            }
                break;
            case VehicalTypeShip:
            {
                vehical = [Ship new];
            }
                break;
            case VehicalTypeTrain:
            {
                vehical = [Train new];
            }
                break;
            default:
                break;
        }
        vehical.vehicalName = NSStringFromClass([vehical class]);
        //将交通工具对象放入缓存池
        [self.poolDic setObject:vehical forKey:@(vehicalType)];
    }
    return vehical;
}

- (NSInteger )getVehicalNum{
    return self.poolDic.count;
}



@end
