//
//  LianXiTwoViewController.m
//  block
//
//  Created by mac on 15/2/1.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "LianXiTwoViewController.h"

@interface LianXiTwoViewController ()

@end

@implementation LianXiTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *rightBar=[[UIBarButtonItem alloc] initWithTitle:@"确定" style:UIBarButtonItemStylePlain target:self action:@selector(doSubmit)];
    self.navigationItem.rightBarButtonItem=rightBar;
}

-(void)doSubmit{
    [self.navigationController popViewControllerAnimated:YES];
}

//准备好传值的方法,随时调用..
-(void)passMyValue:(passValue)passMyValue{
    NSLog(@"第一步....");
    self.pv=passMyValue;
}

-(void)viewWillDisappear:(BOOL)animated{
    //页面消失的时候,将数值使用block的方式传递过去
    self.pv(_text_info.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
