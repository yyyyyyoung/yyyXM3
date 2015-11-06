//
//  shopModel.m
//  yyyXM3
//
//  Created by mac on 15/10/21.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "ShopModel.h"

@implementation ShopModel

- (NSDictionary *)attributeMapDictionary {
    
    
    NSDictionary *mapAttr = @{@"deal_id":@"deal_id",
                              @"image":@"image",
                              @"tiny_image":@"tiny_image",
                              @"title":@"title",
                              @"shopDescription":@"description",
                              @"market_price":@"market_price",
                              @"current_price":@"current_price",
                              @"promotion_price":@"promotion_price",
                              @"sale_num":@"sale_num",
                              @"score":@"score",
                              @"comment_num":@"comment_num",
                              @"deal_url":@"deal_url",
                              @"deal_murl":@"deal_murl"};
    return mapAttr;
}

@end
