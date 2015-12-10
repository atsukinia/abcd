//
//  FirstViewController.m
//  导航控制器的逻辑
//
//  Created by aki on 15/12/9.
//  Copyright © 2015年 AKI. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

- (IBAction)firstAction:(id)sender;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设定当前界面对应的导航栏外观
    
    
    //当一个控制器对象处于一个导航栏的栈结构中，这个控制器对象的navigationItem属性的设置才会生效，当这个控制器处于栈顶时，navigationItem属性的设置会显示到导航栏上
    //设置标题的两种方式
    //1.设置titleView
    //(1)用图片
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    [imageView setImage:[UIImage imageNamed:@"header_bg"]];
    [self.navigationItem setTitleView:imageView];
    //(2)用label/buttton...
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 30)];
    //2.直接设置Title
    [self.navigationItem setTitle:@"第一页"];
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

- (IBAction)firstAction:(id)sender {
    
    SecondViewController *secVC = [[SecondViewController alloc] init];
    //如果想要显示一个控制器的视图，就把这个试图控制器压栈
    
    //控制器自带属性，这个属性用来记录当前该控制器所处的栈对象的地址
    [self.navigationController pushViewController:secVC animated:YES];
    
    
}
@end
