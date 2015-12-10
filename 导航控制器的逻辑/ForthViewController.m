//
//  ForthViewController.m
//  导航控制器的逻辑
//
//  Created by aki on 15/12/9.
//  Copyright © 2015年 AKI. All rights reserved.
//

#import "ForthViewController.h"

@interface ForthViewController ()
- (IBAction)pressAction:(id)sender;

@end

@implementation ForthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"第四页";
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)pressAction:(id)sender {
//    //跳转到导航控制器的根视图（第一级视图）
//    [self.navigationController popToRootViewControllerAnimated:YES];
//    //跳到上一级视图
//    [self.navigationController popViewControllerAnimated:YES];
    //读取导航控制器内的所有控制器对象，对象在数组中的存放顺序就是压栈的顺序，第一个元素在栈底，最后一个元素在栈顶
    NSArray *viewControllers = self.navigationController.viewControllers;
    
    UIViewController *secondVC = viewControllers[1];
    [self.navigationController popToViewController:secondVC animated:YES];
    
}
@end
