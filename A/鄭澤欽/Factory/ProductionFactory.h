//
//  ProductionFactory.h
//  Factory
//
//  Created by zhengzeqin on 2017/3/14.
//  Copyright © 2017年 addcn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bus.h"
#import "Car.h"
#import "Bicycle.h"
typedef NS_ENUM(NSInteger ,ProductionType) {
    ProductionTypeBus,
    ProductionTypeCar,
    ProductionTypeBicycle,
};
@interface ProductionFactory : NSObject

- (Vehicle *)creatProductionWithType:(ProductionType)type;

@end
