//
//  CarEngineAdapter.m
//  Adapter
//
//  Created by zhengzeqin on 2017/5/16.
//  Copyright © 2017年 addcn. All rights reserved.
//

#import "CarEngineAdapter.h"
#import "Engine.h"
@interface CarEngineAdapter()
@property (strong, nonatomic) Engine *engine;
@end
@implementation CarEngineAdapter
- (void)fighterCarEngine{
    NSLog(@"fighterCarEngine");
    self.engine = [Engine new];
    [self.engine fighterEngine];
}
@end
