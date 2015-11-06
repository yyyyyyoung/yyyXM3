//
//  CategoryCollectionView.h
//  yyyXM3
//
//  Created by mac on 15/10/25.
//  Copyright © 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryCollectionView : UICollectionView<UICollectionViewDataSource,UICollectionViewDelegate>

@property(nonatomic,strong)NSMutableArray *dataArray;

@end
