//
//  DealsModel.m
//  yyyXM3
//
//  Created by mac on 15/10/21.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "DealsModel.h"

@implementation DealsModel

- (NSDictionary *)attributeMapDictionary {
    
    NSDictionary *mapAttr = @{@"deal_id":@"deal_id",
                              @"image":@"image",
                              @"tiny_image":@"tiny_image",
                              @"title":@"title",
                              @"dealsDescription":@"description",
                              @"market_price":@"market_price",
                              @"current_price":@"current_price",
                              @"promotion_price":@"promotion_price",
                              @"sale_num":@"sale_num",
                              @"score":@"score",
                              @"comment_num":@"comment_num",
                              @"publish_time":@"publish_time",
                              @"purchase_deadline":@"purchase_deadline",
                              @"shopID":@"shopID",
                              @"longitude":@"longitude",
                              @"latitude":@"latitude",
                              @"distance":@"distance",
                              @"shop_url":@"shop_url",
                              @"shop_murl":@"shop_murl",
                              @"deal_murl":@"deal_murl"};
    
    return mapAttr;
}

- (void)setAttributes:(NSDictionary *)dataDic
{
    [super setAttributes:dataDic];
    
    NSDictionary *dic = [dataDic objectForKey:@"data"];
    if (dic != nil) {
        _shopModel = [[ShopModel alloc] initWithDataDic:dataDic];
    }
}

@end
