//
//  ShopModel.h
//  yyyXM3
//
//  Created by mac on 15/10/21.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "BaseModel.h"

@interface ShopModel : BaseModel

//"deal_id": 3920636,
//"image": "http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D720%3Bq%3D79/sign=8803a63c329b033b38c7a69a28fe1ae3/d01373f082025aaff826c5f3fdedab64034f1af5.jpg",
//"tiny_image": "http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C720%2C436%3Bw%3D230%3Bq%3D79/sign=741dba93053b5bb5aa987abe0be3f909/d01373f082025aaff826c5f3fdedab64034f1af5.jpg",
//"title": "全聚德",
//"description": "300元大兴店代金券！可叠加使用，节假日通用，提供免费WiFi！",
//"market_price": 300,
//"current_price": 258,
//"promotion_price": 258,
//"sale_num": 97,
//"score": 4.25,
//"comment_num": 34,
//"deal_url": "http://www.nuomi.com/cps/redirect?cid=openapi&app_id=&url=http%3A%2F%2Fbj.nuomi.com%2Fdeal%2F.html",
//"deal_murl": "http://www.nuomi.com/cps/redirect?cid=openapi&app_id=&url=http%3A%2F%2Fm.nuomi.com%2Fbj%2Fdeal%2F"


@property(nonatomic,retain)NSNumber *deal_id;     //团单id
@property(nonatomic,copy)NSString   *image;       //图片链接
@property(nonatomic,copy)NSString   *tiny_image;  //小图链接
@property(nonatomic,copy)NSString   *title;       //商户标题
@property(nonatomic,copy)NSString   *shopDescription; //商户描述
@property(nonatomic,retain)NSNumber *market_price; //市场价格，单位是分
@property(nonatomic,retain)NSNumber *current_price; //售卖价格，单位是分
@property(nonatomic,retain)NSNumber *promotion_price; //活动价格
@property(nonatomic,retain)NSNumber *sale_num;      //已售团单数量
@property(nonatomic,assign)float    score;      //用户评分
@property(nonatomic,retain)NSNumber *comment_num; //用户评论个数
@property(nonatomic,copy)NSString   *deal_url;    //Pc团单详情页
@property(nonatomic,copy)NSString   *deal_murl;   //Wap团详情页


@end
