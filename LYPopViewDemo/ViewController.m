//
//  ViewController.m
//  PopViewDemo
//
//  Created by luoyin on 15/5/21.
//  Copyright (c) 2015年 luoyin. All rights reserved.
//

#import "ViewController.h"
#import "PopoverView.h"

@interface ViewController ()<PopoverViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //配置navigationItem
    self.navigationItem.titleView = ({
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 40)];
        label.text = @"弹窗视图";
        label.textColor = [UIColor whiteColor];
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:14];
        label;
    });
    
    //配置navigationItem右边按钮
    self.navigationItem.rightBarButtonItem = ({
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
        [button setImage:[UIImage imageNamed:@"add_image"] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(popSubView) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *righrBarButton = [[UIBarButtonItem alloc]initWithCustomView:button];
        righrBarButton;
    });
    
}

- (void)popSubView{
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGPoint point = CGPointMake(screenWidth-30, 64);
    PopoverView *view = [[PopoverView alloc]initWithPoint:point
                                                   titles:@[@"扫描验证", @"输入验证码"]
                                               imageNames:@[@"scan", @"yanzheng"]];
    view.delegate = self;
    [view show];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - PopoverViewDelegate
- (void)didSelectedRowAtIndex:(NSInteger)index{
    
    if (index == 0) {
        NSLog(@"二维码扫描");
    }else if(index == 1){
        NSLog(@"输入验证码");
    }
}

@end
