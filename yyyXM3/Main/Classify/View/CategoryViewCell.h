//
//  CategoryViewCell.h
//  yyyXM3
//
//  Created by mac on 15/10/25.
//  Copyright © 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryModel.h"

@interface CategoryViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *categoryImgView;
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;

@property(nonatomic,strong)CategoryModel *model;

@end
