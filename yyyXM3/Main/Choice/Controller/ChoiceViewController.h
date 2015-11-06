//
//  ChoiceViewController.h
//  yyyXM3
//
//  Created by mac on 15/10/27.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "BaseViewController.h"
#import "ChoiceTableView.h"

@interface ChoiceViewController : BaseViewController

@property (nonatomic, strong) ChoiceTableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end
