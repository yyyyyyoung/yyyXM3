//
//  HomeTableView.h
//  yyyXM3
//
//  Created by mac on 15/10/21.
//  Copyright © 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeTableView : UITableView<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)NSArray *dataArray;

@end
