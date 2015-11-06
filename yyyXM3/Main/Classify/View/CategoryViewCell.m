//
//  CategoryViewCell.m
//  yyyXM3
//
//  Created by mac on 15/10/25.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "CategoryViewCell.h"
#import "UIImageView+WebCache.h"

@implementation CategoryViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setModel:(CategoryModel *)model {
    
    if (_model != model) {
        
        _model = model;
        
        [self setNeedsLayout];
    }
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    [_categoryImgView sd_setImageWithURL:[NSURL URLWithString:_model.categoryPic]];
    
    _categoryLabel.text = _model.categoryName;
}

@end
