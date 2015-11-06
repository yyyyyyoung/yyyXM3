//
//  DetailViewController.h
//  yyyXM3
//
//  Created by mac on 15/10/22.
//  Copyright © 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DealsModel.h"

@interface DetailViewController : UIViewController

@property (nonatomic, strong) DealsModel *model;
@property (nonatomic, strong) UIWebView *webView;
@property (nonatomic, strong) NSArray *dataDic;

@end
