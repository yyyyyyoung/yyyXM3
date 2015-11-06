//
//  ChoiceCell.m
//  yyyXM3
//
//  Created by mac on 15/10/27.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "ChoiceCell.h"
#import "UIImageView+WebCache.h"
#import "UIImage+WaterImage.h"

@implementation ChoiceCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setModel:(ChoseModel *)model
{
    if (_model != model) {
        _model = model;
        
        [self setNeedsLayout];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    //图片
    if (!_model.is_priv) {
        
        [_image sd_setImageWithURL:[NSURL URLWithString:_model.tiny_image] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
            
            _image.image = [image addWaterImage:@"a_xiangqing_mianyuyue_icon.png"];
            
        }];
    } else {
        
        [_image sd_setImageWithURL:[NSURL URLWithString:_model.tiny_image]];
        
    }
    //    [_shopImgView setImageWithURL:[NSURL URLWithString:_model.tiny_image]];
    
    //店名
    _name.text = _model.business_title;
    //距离
    _distanceLabel.text = _model.distance;
    //子标题
    _indureLabel.text = _model.medium_title;
    //现价
    CGFloat currentPrice = [_model.current_price floatValue] / 100;
    _priceLabel.text = [NSString stringWithFormat:@"￥%.0f",currentPrice];
    _priceLabel.textColor = [UIColor colorWithRed:254 / 255.0 green:59 / 255.0 blue:125 / 255.0 alpha:1];
    
    //原价
    CGFloat yj = [_model.market_price floatValue] / 100;
    NSString *distext = [NSString stringWithFormat:@"%.2f",yj];
    
    // 增加删除线
    NSMutableAttributedString *mattStr = [[NSMutableAttributedString alloc] initWithString:distext];
    [mattStr addAttribute:NSStrikethroughStyleAttributeName
                    value:@9
                    range:NSMakeRange(0, distext.length)];
    
    _beforePriceLabel.attributedText = mattStr;
    
    //评分
    _markLabel.text = [NSString stringWithFormat:@"%@分",_model.ugc_score];
    
    //出售
    CGFloat sale = [_model.ugc_num floatValue];
    _saleLabel.text = [NSString stringWithFormat:@"出售%f",sale];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
