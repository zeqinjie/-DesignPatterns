//
//  VehicalFactory.h
//  ShareElement
//
//  Created by 郑泽钦 on 2017/5/16.
//  Copyright © 2017年 zhengzeqin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehical.h"

@interface VehicalFactory : NSObject
- (Vehical *)creatVehicalWithType:(VehicalType)vehicalType;
- (NSInteger )getVehicalNum;
@end
