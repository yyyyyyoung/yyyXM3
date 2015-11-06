//
//  MineViewController.h
//  yyyXM3
//
//  Created by mac on 15/10/25.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "BaseViewController.h"

@interface MineViewController : BaseViewController <UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
