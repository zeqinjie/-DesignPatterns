//
//  ViewController.m
//  ShareElement
//
//  Created by 郑泽钦 on 2017/5/16.
//  Copyright © 2017年 zhengzeqin. All rights reserved.
//

#import "ViewController.h"
#import "VehicalFactory.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self testShare];
}

- (void)testShare{
    VehicalFactory *factory = [[VehicalFactory alloc]init];
    Vehical *car1 = [factory creatVehicalWithType:VehicalTypeCar];
    car1.userName = @"jack";
    [car1 descriptOwner];
    Vehical *car2 = [factory creatVehicalWithType:VehicalTypeCar];
    car2.userName = @"petter";
    [car2 descriptOwner];
    Vehical *car3 = [factory creatVehicalWithType:VehicalTypeCar];
    car3.userName = @"Lily";
    [car3 descriptOwner];
    
    
    Vehical *bus1 = [factory creatVehicalWithType:VehicalTypeBus];
    bus1.userName = @"Lei";
    [bus1 descriptOwner];
    Vehical *bus2 = [factory creatVehicalWithType:VehicalTypeBus];
    bus2.userName = @"Chen";
    [bus2 descriptOwner];
    
    
    NSLog(@"num = %d",[factory getVehicalNum]);
    /**
     2017-05-17 14:45:58.155169+0800 ShareElement[5876:1794076] jack 拥有 Car
     2017-05-17 14:45:58.155390+0800 ShareElement[5876:1794076] petter 拥有 Car
     2017-05-17 14:45:58.155491+0800 ShareElement[5876:1794076] Lily 拥有 Car
     2017-05-17 14:45:58.155630+0800 ShareElement[5876:1794076] Lei 拥有 Bus
     2017-05-17 14:45:58.155925+0800 ShareElement[5876:1794076] Chen 拥有 Bus
     2017-05-17 14:45:58.156158+0800 ShareElement[5876:1794076] num = 2
     **/
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
