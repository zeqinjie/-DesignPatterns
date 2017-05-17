//
//  ViewController.m
//  21享元模式
//
//  Created by yifan on 15/8/15.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDWebSiteFactory.h"
#import "HCDWebSite.h"
#import "HCDConcreteWebSite.h"
#import "HCDUser.h"

typedef id<HCDWebSite> HCDWebSiteType;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDWebSiteFactory *facoty = [[HCDWebSiteFactory alloc]init];
    HCDWebSiteType fx = [facoty getWebSiteCategory:@"产品展示"];
    HCDUser *user = [[HCDUser alloc]init];
    user.name = @"小菜";
    [fx use:user];
    HCDWebSiteType fy = [facoty getWebSiteCategory:@"产品展示"];
    HCDUser *user1 = [[HCDUser alloc]init];
    user1.name = @"大鸟";
    [fy use:user1];
    HCDWebSiteType fz = [facoty getWebSiteCategory:@"博客"];
    HCDUser *user2 = [[HCDUser alloc]init];
    user2.name = @"咪咪";
    [fz use:user2];
    
    NSInteger count = [facoty getWebSiteCount];
    NSLog(@"个数：%d",count);
    
    /***
     2017-05-17 13:53:09.945511+0800 21享元模式[5835:1782581] 网站分类:产品展示,用户:小菜
     2017-05-17 13:53:09.945615+0800 21享元模式[5835:1782581] 网站分类:产品展示,用户:大鸟
     2017-05-17 13:53:09.945657+0800 21享元模式[5835:1782581] 网站分类:博客,用户:咪咪
     2017-05-17 13:53:09.945734+0800 21享元模式[5835:1782581] 个数：2
     ***/
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
