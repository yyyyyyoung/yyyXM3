//
//  ChoiceViewController.m
//  yyyXM3
//
//  Created by mac on 15/10/27.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "ChoiceViewController.h"
#import "MyNetWorkQuery.h"
#import "ChoseModel.h"
#import "ChoiceCell.h"
#import "UIViewExt.h"
#import "ChoiceTableView.h"
#import "Common.h"

@interface ChoiceViewController ()

@end

@implementation ChoiceViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //设置导航栏右边按钮
    [self setNavRightBtn:@"icon_nav_saoyisao_normal.png"];
    
    [self loadData];
    [self createTable];
    
}

//加载数据
- (void)loadData {
    
    NSString *urlString = @"http://t10.nuomi.com/webapp/na/toptenajax";
    NSString *httpArg = @"from=fr_na_t10&tid=t_home_na&bn_v=5.13.2&cuid=F0DF94CD7CC07BDF0FA191ACA26AAF4E%7C079304320240668&location=30.324199%2C120.350697&sid=199%2C172%2C120%2C214%2C83%2C118&areaId=600010000&deviceType=Android&pn=0&pageSize=20&compid=t10brand&comppage=index&needstorecard=1";
    
    [MyNetWorkQuery requestData:urlString HTTPMethod:@"GET" httpArg:httpArg completionHandle:^(id result) {
        
        NSDictionary *dataDic = [result objectForKey:@"data"];
        
        NSArray *listArray = [dataDic objectForKey:@"list"];
        
        NSMutableArray *array = [[NSMutableArray alloc] init];
        self.dataArray = [[NSMutableArray alloc] init];
        
        for (NSDictionary *dic in listArray) {
            
            ChoseModel *chModel = [[ChoseModel alloc] initWithDataDic:dic];
            [array addObject:chModel];
        }
        
        _tableView.dataArray = array;
        
        dispatch_sync(dispatch_get_main_queue(), ^{
            [_tableView reloadData];
        });
        
    } errorHandle:^(NSError *error) {
        
        NSLog(@"精选获取数据出错");
    }];
}

- (void)createTable
{
    _tableView = [[ChoiceTableView alloc] initWithFrame:CGRectMake(0, 64, kScreenWidth, kScreenHeight - 64 - 49) style:UITableViewStyleGrouped];
    
    [self.view addSubview:_tableView];
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
