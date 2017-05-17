//
//  Vehical.h
//  ShareElement
//
//  Created by 郑泽钦 on 2017/5/16.
//  Copyright © 2017年 zhengzeqin. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger ,VehicalType) {
    VehicalTypeCar,
    VehicalTypeBus,
    VehicalTypeBike,
    VehicalTypeShip,
    VehicalTypeTrain,
};


@interface Vehical : NSObject
//交通工具名称
@property (strong, nonatomic) NSString *vehicalName;
//拥有者名称
@property (strong, nonatomic) NSString *userName;
//描述
- (void)descriptOwner;
@end

@interface  Car: Vehical

@end

@interface  Bus: Vehical

@end

@interface  Bike: Vehical

@end

@interface  Ship: Vehical

@end

@interface  Train: Vehical

@end
