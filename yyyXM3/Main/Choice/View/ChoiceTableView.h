//
//  ChoiceTableView.h
//  yyyXM3
//
//  Created by mac on 15/10/27.
//  Copyright © 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChoiceTableView : UITableView<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSArray *dataArray;


@end
