//
//  HomeViewController.m
//  yyyXM3
//
//  Created by mac on 15/10/21.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "HomeViewController.h"
#import "Common.h"
#import "MyNetWorkQuery.h"
#import "DealsModel.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setNavRightBtn:@"icon_nav_saoyisao_normal"];
    [self loadData];
    [self createTable];
}

- (void)createTable
{
    _tableView = [[HomeTableView alloc] initWithFrame:CGRectMake(0, 64, kScreenWidth, kScreenHeight - 64 - 49) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
}

#pragma mark - 加载数据
- (void)loadData
{
    NSString *urlStr = @"http://apis.baidu.com/baidunuomi/openapi/searchdeals";
    NSString *httpArg = @"city_id=600010000";
    
    
    
    
    [MyNetWorkQuery requestData:urlStr HTTPMethod:@"GET" httpArg:httpArg completionHandle:^(id result) {
        
        NSDictionary *datadic = [result objectForKey:@"data"];
        NSArray *array = [datadic objectForKey:@"deals"];
        
        NSMutableArray *dataArray = [[NSMutableArray alloc] init];
        for (NSDictionary *dic in array) {
            DealsModel *model = [[DealsModel alloc] initWithDataDic:dic];
            
            [dataArray addObject:model];
        }
        _tableView.dataArray = dataArray;
//        _detaTableView.dataArray = dataArray;
        dispatch_sync(dispatch_get_main_queue(), ^{
            [_tableView reloadData];
        
        });
        
    } errorHandle:^(NSError *error) {
        NSLog(@"出错：%@",error);
    }];
}

@end
