//
//  ChoseModel.h
//  yyyXM3
//
//  Created by mac on 15/10/27.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "BaseModel.h"

@interface ChoseModel : BaseModel

@property(nonatomic,copy)NSString *business_title;
@property(nonatomic,copy)NSString *tiny_image;
@property(nonatomic,copy)NSString *image;
@property(nonatomic,retain)NSNumber *current_price;
@property(nonatomic,retain)NSNumber *market_price;
@property(nonatomic,copy)NSString *medium_title;
@property(nonatomic,copy)NSString *min_title;
@property(nonatomic,copy)NSString *ugc_score; //评分
@property(nonatomic,retain)NSNumber *ugc_num; //售出
@property(nonatomic,copy)NSString *distance;
@property(nonatomic,copy)NSString *na_logo;
@property(nonatomic,retain)NSNumber *tuan_price;

@property(nonatomic,assign)BOOL is_priv;

@end
