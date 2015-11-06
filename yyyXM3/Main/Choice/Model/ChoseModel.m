//
//  ChoseModel.m
//  yyyXM3
//
//  Created by mac on 15/10/27.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "ChoseModel.h"

@implementation ChoseModel

- (NSDictionary *)attributeMapDictionary
{
    NSDictionary *mapAttr = @{@"business_title":@"business_title",
                              @"tiny_image":@"tiny_image",
                              @"image":@"image",
                              @"current_price":@"current_price",
                              @"market_price":@"market_price",
                              @"medium_title":@"medium_title",
                              @"min_title":@"min_title",
                              @"ugc_score":@"ugc_score",
                              @"ugc_num":@"ugc_num",
                              @"distance":@"distance",
                              @"na_logo":@"na_logo",
                              @"tuan_price":@"tuan_price"};
    return mapAttr;
}

@end
