//
//  CarEngineAdapter.h
//  Adapter
//
//  Created by zhengzeqin on 2017/5/16.
//  Copyright © 2017年 addcn. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol CarEngineAdapterProtocol <NSObject>

@required
- (void)fighterCarEngine;

@end
@interface CarEngineAdapter : NSObject
- (void)fighterCarEngine;
@end
