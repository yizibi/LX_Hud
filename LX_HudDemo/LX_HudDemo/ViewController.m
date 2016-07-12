//
//  ViewController.m
//  LX_HudDemo
//
//  Created by 李lucy on 16/7/12.
//  Copyright © 2016年 com.muyandialog.Co.,Ltd. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()


@end

@implementation ViewController

- (IBAction)showErrorBtn:(UIButton *)sender {
    [self showProgressHUD];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self hiddenProgressHUD];
        
    });
}

- (IBAction)showSuccess:(id)sender {
    
    [MBProgressHUD showSuccess:@"我是自定义"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUD];
    });
}
- (IBAction)showMessage:(id)sender {
    //模拟网络
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeBlack];
    [SVProgressHUD showWithStatus:@"我是测试..."];

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [SVProgressHUD dismiss];
    });
}

- (IBAction)SVProgressSuccess:(id)sender {
    
    [SVProgressHUD showSuccessWithStatus:@"成功"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [SVProgressHUD dismiss];
    });
    
   

}
- (IBAction)SVProgressError:(id)sender {
     [SVProgressHUD showErrorWithStatus:@"账号或密码错误"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [SVProgressHUD dismiss];
    });
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
