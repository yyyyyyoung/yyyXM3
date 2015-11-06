//
//  CategoryCollectionView.m
//  yyyXM3
//
//  Created by mac on 15/10/25.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "CategoryCollectionView.h"
#import "CategoryViewCell.h"
#import "UIViewExt.h"

@implementation CategoryCollectionView

- (instancetype)initWithFrame:(CGRect)frame {
    
    //创建布局对象
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    //单元格大小
    layout.itemSize = CGSizeMake(65, 88);
    
    //水平最小间隙
    layout.minimumInteritemSpacing = 20;
    //竖直最小间隙
    layout.minimumLineSpacing = 20;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    //设置四周间隙
    layout.sectionInset = UIEdgeInsetsMake(90, 90, 90, 90);
    
    self = [super initWithFrame:frame collectionViewLayout:layout];
    if (self) {
        
        self.dataSource = self;
        self.delegate = self;
        self.showsVerticalScrollIndicator = NO;
        self.backgroundColor = [UIColor clearColor];
        //注册单元格
        UINib *nib = [UINib nibWithNibName:@"CategoryViewCell" bundle:[NSBundle mainBundle]];
        [self registerNib:nib forCellWithReuseIdentifier:@"CategoryViewCell"];
        
    }
    return self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 30;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CategoryViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CategoryViewCell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor clearColor];
    
    CategoryModel *model = self.dataArray[indexPath.item];
    cell.model = model;
    
    return cell;
}

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    
    //获取视图停止之后的偏移量
    CGFloat xOffset = targetContentOffset->x;
    xOffset -= 65/2;
    
    //根据偏移量计算停止之后，所在的页码
    NSInteger index = xOffset / (65 + 10);
    if (xOffset > 0) {
        index += 1;
    }
    
    //计算子页在正中间时，滑动视图的偏移量
    xOffset = index * (65 + 10);
    
    //将计算所得的偏移量交给滑动视图
    targetContentOffset->x = xOffset;
    
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    //根据偏移量计算正中间单元格的索引
    NSInteger index = collectionView.contentOffset.x / (collectionView.width * 0.5 + 10);
    
    //判断选中的单元格是不是正中间单元格
    if (indexPath.item != index) {
        
        [collectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    }
    
    NSLog(@"选中第%ld个单元格",(long)indexPath.item);
}



@end
