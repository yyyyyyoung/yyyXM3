//
//  ShopMall.h
//  yyyXM3
//
//  Created by mac on 15/10/26.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "BaseModel.h"

@interface ShopMall : BaseModel

@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *distance;
@property(nonatomic,copy)NSString *discount; //休闲娱乐4折起
@property(nonatomic,strong)NSArray *recReason; //看过附近商户

@end
