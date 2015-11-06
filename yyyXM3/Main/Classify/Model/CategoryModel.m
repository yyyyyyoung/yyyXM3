//
//  CategoryModel.m
//  yyyXM3
//
//  Created by mac on 15/10/25.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "CategoryModel.h"

@implementation CategoryModel

- (NSDictionary *)attributeMapDictionary {
    
    NSDictionary *mapAttr = @{@"categoryName":@"category_name",
                              @"categoryPic":@"category_picurl"};
    return mapAttr;
}


@end
