//
//  BaseViewController.h
//  yyyXM3
//
//  Created by mac on 15/10/21.
//  Copyright © 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

- (void)setNavRightBtn:(NSString *)imageName;


/*
 #pragma mark - 复写标签栏
 - (void)createTab
 {
 //    for (UIView *view in self.tabBarController.tabBar.subviews) {
 //        Class cls = NSClassFromString(@"UIButton");
 //        if ([view isKindOfClass:cls]) {
 //            [view removeFromSuperview];
 //        }
 //    }
 
 self.tabBarController.tabBar.hidden = YES;
 
 CGFloat width = kScreenWidth / 3;
 for (int i = 0; i < 3; i++) {
 UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
 button.frame = CGRectMake(i * width, 0, width, 49);
 if (i == 0) {
 [button setImage:[UIImage imageNamed:@"recommend_xing"] forState:UIControlStateNormal];
 
 [button addTarget:self action:@selector(buyCar) forControlEvents:UIControlEventTouchUpInside];
 }else if (i == 1)
 {
 [button setTitle:@"加入购物车" forState:UIControlStateNormal];
 button.titleLabel.textColor = [UIColor whiteColor];
 button.backgroundColor = [UIColor orangeColor];
 [button addTarget:self action:@selector(addBuyCar) forControlEvents:UIControlEventTouchUpInside];
 }
 else
 {
 [button setTitle:@"立即购买" forState:UIControlStateNormal];
 button.titleLabel.textColor = [UIColor whiteColor];
 button.backgroundColor = [UIColor colorWithRed:254 / 255.0 green:59 / 255.0 blue:125 / 255.0 alpha:1];
 [button addTarget:self action:@selector(buyNow) forControlEvents:UIControlEventTouchUpInside];
 }
 
 [self.tabBarController.tabBar addSubview:button];
 }
 }
 
 - (void)buyCar
 {
 NSLog(@"查看购物车");
 }
 
 - (void)addBuyCar
 {
 NSLog(@"加入购物车");
 }
 
 - (void)buyNow
 {
 NSLog(@"立即购买");
 }
 */
@end
