//
//  HomeCell.m
//  yyyXM3
//
//  Created by mac on 15/10/21.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "HomeCell.h"
#import "UIImageView+WebCache.h"
#import "UIImage+WaterImage.h"

@implementation HomeCell

- (void)awakeFromNib {
//    [self layoutSubviews];
}

- (void)setModel:(DealsModel *)model
{
    if (_model != model) {
        _model = model;
        
        [self setNeedsLayout];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    //商店图片
    if (!_model.is_reservation_required) {
        
        [_image sd_setImageWithURL:[NSURL URLWithString:_model.tiny_image] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
            
            _image.image = [image addWaterImage:@"a_xiangqing_mianyuyue_icon.png"];
        }];
    } else {
        
        [_image sd_setImageWithURL:[NSURL URLWithString:_model.tiny_image]];
    }
    
    _name.text = _model.title;
    
    //距离
    CGFloat dt = [_model.distance floatValue];
    if (dt > 1000) {
        
        dt = dt / 1000.0;
        _distance.text = [NSString stringWithFormat:@"%.1fkm",dt];
    } else {
        
        _distance.text = [NSString stringWithFormat:@"%.0fm",dt];
    }
    
    //介绍
    _introduce.text = _model.dealsDescription;
    
    //当前价格
    CGFloat xj = [_model.current_price floatValue] / 100;
    _price.text = [NSString stringWithFormat:@"￥%.2f",xj];
    _price.textColor = [UIColor colorWithRed:254 / 255.0 green:59 / 255.0 blue:125 / 255.0 alpha:1];
    
    //原价
    CGFloat yj = [_model.market_price floatValue] / 100;
    NSString *distext = [NSString stringWithFormat:@"%.2f",yj];

        // 增加删除线
    NSMutableAttributedString *mattStr = [[NSMutableAttributedString alloc] initWithString:distext];
    [mattStr addAttribute:NSStrikethroughStyleAttributeName
                    value:@9
                    range:NSMakeRange(0, distext.length)];
    
    _discount.attributedText = mattStr;
    
    //评分
    CGFloat score = [_model.score floatValue];
    _mark.text = [NSString stringWithFormat:@"%.1f分",score];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
