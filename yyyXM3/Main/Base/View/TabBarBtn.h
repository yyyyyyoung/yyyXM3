//
//  TabBarBtn.h
//  yyyXM3
//
//  Created by mac on 15/10/21.
//  Copyright © 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabBarBtn : UIButton

{
    UIImageView *_btnImageView;
    UILabel *_btnLabel;
}

- (instancetype)initWithTitle:(NSString *)title imageName:(NSString *)imageName frame:(CGRect)frame;

- (void)setNorImage:(NSString *)imageName;

- (void)setSelImage:(NSString *)imageName;

- (void)setNorTitle:(NSString *)title;

- (void)setSelTitle:(NSString *)title;

@end
