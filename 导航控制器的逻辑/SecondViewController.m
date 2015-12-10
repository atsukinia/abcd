//
//  SecondViewController.m
//  导航控制器的逻辑
//
//  Created by aki on 15/12/9.
//  Copyright © 2015年 AKI. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()
- (IBAction)nextAction:(id)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"第二页";
    
    //设置导航栏左右两侧的按钮
    //1.使用系统自带样式初始化导航栏按钮
//    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(leftAction:)];
    //2.指定按钮标题初始化导航栏按钮
//    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(leftAction:)];
//    3.指定一张图片初始化导航栏按钮（不取纹理，只取轮廓，图片不能有背景）
    UIBarButtonItem *leftBtn1 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btn_backItem"] style:UIBarButtonItemStylePlain target:self action:@selector(leftAction:)];
    //4.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(0, 0, 70, 40)];
    [btn setBackgroundImage:[UIImage imageNamed:@"btn_backItem"] forState:UIControlStateNormal];
    [btn setTitle:@"back" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor grayColor]];
    [btn addTarget:self action:@selector(leftAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
//    [self.navigationItem setLeftBarButtonItem:leftBtn];
    //左侧设置多个按钮
//    [self.navigationItem setLeftBarButtonItems:@[leftBtn,leftBtn1]];
    
    
    
}

- (void)leftAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"left btn pressing");
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
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    
    [self.navigationController pushViewController:thirdVC animated:YES];
    
}
@end
