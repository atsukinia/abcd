//
//  ThirdViewController.m
//  导航控制器的逻辑
//
//  Created by aki on 15/12/9.
//  Copyright © 2015年 AKI. All rights reserved.
//

#import "ThirdViewController.h"
#import "ForthViewController.h"

@interface ThirdViewController ()
- (IBAction)nextAction:(id)sender;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"第三页";
    
    //导航栏的背景设置
    
    [self.navigationController.navigationBar setBackgroundColor:[UIColor redColor]];
    
    //使用图片设置导航栏背景
    /*1.使用的图片的比例完全跟屏幕的比例吻合，【状态栏会变成黑色，iOS以前的风格，比例不符合的话就会波及状态栏】
     即 ：
     屏幕宽度 ：（44）像素        [人像模式]
     屏幕高度 ：32（像素）        [风景模式]
     */
    /*
    1.要设定的图片
     2.指定人像模式（竖屏）还是风景模式（横屏）
     */
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"header_bg"] forBarMetrics:UIBarMetricsDefault];
    
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

- (IBAction)nextAction:(id)sender {
    ForthViewController *forthVC = [[ForthViewController alloc] init];
    [self.navigationController pushViewController:forthVC animated:YES];
}
@end
