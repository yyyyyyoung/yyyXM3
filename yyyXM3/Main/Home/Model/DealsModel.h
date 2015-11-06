//
//  DealsModel.h
//  yyyXM3
//
//  Created by mac on 15/10/21.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "BaseModel.h"
#import "ShopModel.h"

@interface DealsModel : BaseModel

//"shop_id": 245864,
//"city_id": 100010000,
//"shop_name": "辉煌一代海鲜餐厅",
//"shop_url": "http://www.nuomi.com/cps/redirect?cid=tongcheng&app_id=0f2d04b2b38ce7ea2dce2eb74378d4a5&url=http%3A%2F%2Fwww.nuomi.com%2Fshop%2F245864",
//"shop_murl": "http://www.nuomi.com/cps/redirect?cid=tongcheng&app_id=0f2d04b2b38ce7ea2dce2eb74378d4a5&url=http%3A%2F%2Fm.nuomi.com%2Fmerchant%2F245864",
//"address": "北京市海淀区上地十街辉煌国际大厦商街东入口(近西二旗城铁站)",
//"district_id": 392,
//"bizarea_id": 1387,
//"phone": "01082176375|01082176376",
//"open_time": "",
//"longitude": 116.3003,
//"latitude": 40.0517,
//"traffic_info": "",
//"update_time": 1385553728

@property(nonatomic,retain)NSNumber *deal_id;   //
@property(nonatomic,copy)NSString *image;      //
@property(nonatomic,copy)NSString *tiny_image;
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *dealsDescription;
@property(nonatomic,copy)NSString *market_price; //团单原价，单位分
@property(nonatomic,copy)NSString *current_price;//团购价格,单位分
@property(nonatomic,copy)NSString *promotion_price;//团单的促销价格，如果没有促销，价格是当前的团购价格，单位分
@property(nonatomic,retain)NSNumber *sale_num;
@property(nonatomic,retain)NSNumber *score;
@property(nonatomic,retain)NSNumber *comment_num;
@property(nonatomic,copy)NSString *publish_time;   //团单发布时间
@property(nonatomic,copy)NSString *purchase_deadline;//团单购买的最后期限

@property(nonatomic,retain)NSNumber *shopID;    //商户id
@property(nonatomic,retain)NSNumber *longitude;
@property(nonatomic,retain)NSNumber *latitude;
@property(nonatomic,retain)NSNumber *distance; //当前距离与商户之间的距离，没有传递longitude，latitude字段会                                   返回-1
@property(nonatomic,assign)BOOL is_reservation_required; //是否筛选出免预约,否
@property(nonatomic,copy)NSString *shop_url; //pc端商户详情页
@property(nonatomic,copy)NSString *shop_murl; //wap端商户详情页
@property(nonatomic,copy)NSString *deal_murl; 

@property (nonatomic, strong) ShopModel *shopModel;

@end
