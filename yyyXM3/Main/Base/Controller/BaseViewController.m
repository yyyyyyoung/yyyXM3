//
//  BaseViewController.m
//  yyyXM3
//
//  Created by mac on 15/10/21.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 删除原始按钮视图
    for (UIView *view in self.tabBarController.tabBar.subviews) {
        Class cls = NSClassFromString(@"UITabBarButton");
        if ([view isKindOfClass:cls]) {
            [view removeFromSuperview];
        }
    }
}

- (void)setNavRightBtn:(NSString *)imageName
{
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 26, 26)];
    [btn1 setImage:[UIImage imageNamed:@"icon_nav_cart_normal"] forState:UIControlStateNormal];
    UIBarButtonItem *rightBtn1 = [[UIBarButtonItem alloc] initWithCustomView:btn1];
    
    UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 26, 26)];
    [btn2 setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    UIBarButtonItem *rightBtn2 = [[UIBarButtonItem alloc] initWithCustomView:btn2];
    
    self.navigationItem.rightBarButtonItems = @[rightBtn1,rightBtn2];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
