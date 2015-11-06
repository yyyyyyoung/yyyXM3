//
//  MineHeadCell.m
//  yyyXM3
//
//  Created by mac on 15/10/25.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "MineHeadCell.h"

@implementation MineHeadCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    [_btn1 setImage:[UIImage imageNamed:@"mine_nuomiquan.png"] forState:UIControlStateNormal];
    [_btn2 setImage:[UIImage imageNamed:@"mine_daifukuan.png"] forState:UIControlStateNormal];
    [_btn3 setImage:[UIImage imageNamed:@"mine_card.png"] forState:UIControlStateNormal];
    [_btn4 setImage:[UIImage imageNamed:@"mine_shoucang.png"] forState:UIControlStateNormal];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
