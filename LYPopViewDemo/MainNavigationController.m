//
//  MainNavigationController.m
//  PopViewDemo
//
//  Created by luoyin on 15/5/21.
//  Copyright (c) 2015年 luoyin. All rights reserved.
//

#import "MainNavigationController.h"

@interface MainNavigationController ()

@end

@implementation MainNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* 配置navigation bar外观开始 */
    self.navigationBar.translucent = NO;
    self.navigationBar.titleTextAttributes =
    [NSDictionary dictionaryWithObject:[UIColor whiteColor]
                                forKey:NSForegroundColorAttributeName];
    self.navigationBar.tintColor    = [UIColor whiteColor];    // 文字颜色
    self.navigationBar.barTintColor =     // navigation bar颜色
    [[UIColor alloc] initWithRed:50/255.0 green:155/255.0 blue:198/255.0 alpha:1.0];
    
    /* 配置navigation bar外观结束 */
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
