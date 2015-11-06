//
//  TabBarBtn.m
//  yyyXM3
//
//  Created by mac on 15/10/21.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "TabBarBtn.h"
#import "Common.h"

@implementation TabBarBtn

- (instancetype)initWithTitle:(NSString *)title imageName:(NSString *)imageName frame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        _btnImageView = [[UIImageView alloc] initWithFrame:CGRectMake((self.bounds.size.width - 30) / 2, 0, 32, 32)];
        _btnImageView.image = [UIImage imageNamed:imageName];
        _btnImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:_btnImageView];
        
        _btnLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 34, self.bounds.size.width, 15)];
        _btnLabel.text = title;
        _btnLabel.textAlignment = NSTextAlignmentCenter;
        _btnLabel.textColor = [UIColor grayColor];
        _btnLabel.font = [UIFont systemFontOfSize:13];
        [self addSubview:_btnLabel];

    }
    return self;
}

- (void)setNorTitle:(NSString *)title
{
    _btnLabel.text = title;
    _btnLabel.textColor = [UIColor grayColor];
}

- (void)setSelTitle:(NSString *)title
{
    _btnLabel.text = title;
    _btnLabel.textColor = [UIColor colorWithRed:253/255.0 green:67/255.0 blue:126/255.0 alpha:1];
}

- (void)setNorImage:(NSString *)imageName
{
    _btnImageView.image = [UIImage imageNamed:imageName];
}

- (void)setSelImage:(NSString *)imageName
{
    _btnImageView.image = [UIImage imageNamed:imageName];
}

@end
