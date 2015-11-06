//
//  ChoiceTableView.m
//  yyyXM3
//
//  Created by mac on 15/10/27.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "ChoiceTableView.h"
#import "ChoiceCell.h"
#import "FirstCell.h"

@implementation ChoiceTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self) {
        
        self.delegate = self;
        self.dataSource = self;
        
        self.backgroundColor = [UIColor clearColor];
        
        _dataArray = [[NSMutableArray alloc] init];
        
        UINib *nib = [UINib nibWithNibName:@"FirstCell" bundle:[NSBundle mainBundle]];
        [self registerNib:nib forCellReuseIdentifier:@"FirstCell"];
        
        
        UINib *nib1 = [UINib nibWithNibName:@"ChoiceCell" bundle:[NSBundle mainBundle]];
        [self registerNib:nib1 forCellReuseIdentifier:@"ChoiceCell"];
        
        [self reloadData];
        
    }
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0) {
        return 1;
    } else {
        
        return _dataArray.count;
        
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0 && indexPath.row == 0) {
        FirstCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FirstCell" forIndexPath:indexPath];
        
        return cell;
    }
    else
    {
        ChoiceCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ChoiceCell" forIndexPath:indexPath];
        cell.model = _dataArray[indexPath.row];
        
        return cell;

    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        return 34;
    }
    else {
        
        return 120;
    }
    
    
}


@end
