//
//  HomeTableView.m
//  yyyXM3
//
//  Created by mac on 15/10/21.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "HomeTableView.h"
#import "Common.h"
#import "HomeCell.h"
#import "DealsModel.h"
#import "DetailViewController.h"
#import "UIView+ViewController.h"
#import "BaseViewController.h"

@implementation HomeTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.frame = CGRectMake(0, 64, kScreenWidth, kScreenHeight - 64 - 49);
        self.delegate = self;
        self.dataSource = self;
        
        self.backgroundColor = [UIColor clearColor];
        
        _dataArray = [[NSArray alloc] init];
        
        UINib *nib1 = [UINib nibWithNibName:@"HomeCell" bundle:[NSBundle mainBundle]];
        [self registerNib:nib1 forCellReuseIdentifier:@"HomeCell"];
        
        [self reloadData];
    }
    return self;
}

#pragma mark - 表协议
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArray.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HomeCell *cell  =[tableView dequeueReusableCellWithIdentifier:@"HomeCell" forIndexPath:indexPath];
    
    DealsModel *model = _dataArray[indexPath.row];
    cell.model = model;
    
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 110;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *detVC = [[DetailViewController alloc] init];
    
    detVC.model = _dataArray[indexPath.row];
    
    [self.viewController.navigationController pushViewController:detVC animated:YES];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
