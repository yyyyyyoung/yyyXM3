//
//  BaseTabController.m
//  yyyXM3
//
//  Created by mac on 15/10/21.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "BaseTabController.h"
#import "TabBarBtn.h"
#import "Common.h"
#import "BaseNavController.h"
#import "CategoryCollectionView.h"
#import "UIViewExt.h"
#import "MyNetWorkQuery.h"
#import "CategoryModel.h"

static NSInteger _flag = 0;

@interface BaseTabController ()
{
    NSArray *_btnNorImages; //正常
    NSArray *_btnSelImages; //选中
    NSArray *_names;
    
    NSMutableArray *_btnArray;  //标签栏按钮
    
    UIView *_classifyView;
    CategoryCollectionView *_collectionView; //集合视图
    NSMutableArray *_data;
}
@end

@implementation BaseTabController
{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createTab];
    
    [self createStoryBoard];
    
    [self createClassifyView];
    [self loadCategoryData];
}


- (void)createTab
{
    // 删除原始按钮视图
    for (UIView *view in self.tabBar.subviews) {
        Class cls = NSClassFromString(@"UITabBarButton");
        if ([view isKindOfClass:cls]) {
            [view removeFromSuperview];
        }
    }
    
    //图片数组
    _btnNorImages = @[@"icon_tab_shouye_normal.png",
                      @"icon_tab_fujin_normal.png",
                      @"icon_nor_tab_0.png",
                      @"tab_icon_selection_normal.png",
                      @"icon_tab_wode_normal.png"];
    //粉红图片数组
    _btnSelImages = @[@"icon_tab_shouye_highlight.png",
                    @"icon_tab_fujin_highlight.png",
                    @"icon_sel_0_tab.png",
                    @"tab_icon_selection_highlight.png",
                    @"icon_tab_wode_highlight.png"];
    
    //TabBarButton下名字
    _names = @[@"首页",
               @"附近",
               @"分类",
               @"精选",
               @"个人中心"];
    
    CGFloat btnWidth = kScreenWidth / _names.count;
    _btnArray = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < _names.count; i++) {
//        if (i != 2) {
            TabBarBtn *button = [[TabBarBtn alloc] initWithTitle:_names[i] imageName:_btnNorImages[i] frame:CGRectMake(i * btnWidth, 0, btnWidth, 49)];
            
            if (i == 0) {
                [button setSelTitle:_names[i]];
                [button setSelImage:_btnSelImages[i]];
            }
            
            button.tag = i;
            [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
            
            [_btnArray addObject:button];
            [self.tabBar addSubview:button];
        }
    //}
}

- (void)buttonAction:(TabBarBtn *)button
{
    if (button.tag != 2) {
        self.selectedIndex = button.tag;
    }
    
    if (button.tag == 2) {
        [self classViewMoveUp];
    }
    
    // 点击的不是当前按钮时
    if (_flag != button.tag) {
        TabBarBtn *beforebtn = _btnArray[_flag];
        
        [beforebtn setNorTitle:_names[_flag]];
        [beforebtn setNorImage:_btnNorImages[_flag]];
        
        [button setSelTitle:_names[button.tag]];
        [button setSelImage:_btnSelImages[button.tag]];
    }
    _flag = button.tag;
}

//分类部分数据加载
- (void)loadCategoryData {
    
    NSString *urlStr = @"http://app.nuomi.com/naserver/home/homepage";
    NSString *httpArg = @"page_type=component&appid=android&tn=android&terminal_type=android&device=Xiaomi+2014812&channel=1006900a&v=5.13.2&os=SDK19&cityid=600010000&location=30.32402%2C120.350529&cuid=F0DF94CD7CC07BDF0FA191ACA26AAF4E%7C079304320240668&uuid=ffffffff-cd9e-be17-3c1d-5697050e83f7&timestamp=1445150363930&swidth=720&sheight=1280&net=wifi&sign=c052d0c41b66217ec95c509f25683cc4";
    
    [MyNetWorkQuery requestData:urlStr HTTPMethod:@"GET" httpArg:httpArg completionHandle:^(id result) {
        
        NSDictionary *dealDic = [result objectForKey:@"data"];
        NSArray *deal = [dealDic objectForKey:@"category"];
        
        NSMutableArray *dataArray = [[NSMutableArray alloc] init];
        _data = [[NSMutableArray alloc] init];
        
        for (NSDictionary *dataDic in deal) {
            CategoryModel *model = [[CategoryModel alloc] initWithDataDic:dataDic];
            
            [dataArray addObject:model];
            
        }
        _data = dataArray;
        _collectionView.dataArray = _data;
        [_collectionView reloadData];
        
    } errorHandle:^(NSError *error) {
        NSLog(@"加载数据出错:%@",error);
    }];
}


- (void)createClassifyView
{
    _classifyView = [[UIView alloc] initWithFrame:CGRectMake(0, kScreenHeight, kScreenWidth, kScreenHeight - 20)];
    _classifyView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.8];
    [self.view addSubview:_classifyView];
    
    //创建ClassView的关闭按钮
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(kScreenWidth - 60, 5, 50, 50)];
    [backButton setImage:[UIImage imageNamed:@"voice_guanbi_normal.png"] forState:UIControlStateNormal];
    [backButton setImage:[UIImage imageNamed:@"voice_guanbi_pressed.png"] forState:UIControlStateSelected];
    [backButton addTarget:self action:@selector(classViewMoveDown) forControlEvents:UIControlEventTouchUpInside];
    [_classifyView addSubview:backButton];
    
    _collectionView = [[CategoryCollectionView alloc] initWithFrame:CGRectMake(0, 55, kScreenWidth, _classifyView.height - 55)];
    [_classifyView addSubview:_collectionView];
}

//ClassView上移方法
- (void)classViewMoveUp {
    
    [UIView animateWithDuration:0.5 animations:^{
        
        _classifyView.top = 20;
    }];
}

//ClassView下移方法
- (void)classViewMoveDown {
    
    [UIView animateWithDuration:0.5 animations:^{
        
        _classifyView.top = kScreenHeight;
    }];
}

- (void)createStoryBoard
{
    NSArray *name = @[@"Home",
                      @"Near",
                      @"Classify",
                      @"Choice",
                      @"Mine"];
    NSMutableArray *navArray = [[NSMutableArray alloc] initWithCapacity:5];
    
    for (int i = 0; i < name.count; i++) {
        UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:name[i] bundle:nil];
        
        BaseNavController *navC = [storyBoard instantiateInitialViewController];
        
        [navArray addObject:navC];
    }
    
    self.viewControllers = navArray;
}

@end
