//
//  ProductionFactory.m
//  Factory
//
//  Created by zhengzeqin on 2017/3/14.
//  Copyright © 2017年 addcn. All rights reserved.
//

#import "ProductionFactory.h"

@implementation ProductionFactory

- (Vehicle *)creatProductionWithType:(ProductionType)type{
    switch (type) {
        case ProductionTypeBus:
        {
            return [Bus new];
        }
            break;
        case ProductionTypeCar:
        {
            return [Car new];
        }
            break;
        case ProductionTypeBicycle:
        {
            return [Bicycle new];
        }
            break;
            
        default:
            break;
    }
    return nil;
}
@end
