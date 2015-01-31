//
//  FirstViewController.m
//  block
//
//  Created by mac on 15/1/31.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [button setTitle:@"push" forState:UIControlStateNormal];
    
    button.frame=CGRectMake(100,100,100,100);
    
    [button addTarget:self action:@selector(doButton)forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    //定义一个显示控件
    
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(0,400, 100, 40)];
    self.label.backgroundColor=[UIColor lightGrayColor];
    self.label.text = @"标签信息";//为了显示第二个视图控制器传过来的字符串
    
    [self.view addSubview:self.label];
}

-(void)doButton{
    
    tf = (UITextField *)[self.view viewWithTag:1000];
    
    //push入栈引用计数+1，且控制权归系统
    
    SecondViewController * seV =[[SecondViewController alloc]init];//相对应的将其实例化，否则找不到相应的属性
    
    //回调方法将输入框中的数据 传输过来
    [seV returnText:^(NSString *showText) {
        NSLog(@"已经执行");
        self.label.text = showText;
        
    }];
    
    [self.navigationController pushViewController:seV animated:YES];
    
}



- (void)didReceiveMemoryWarning {

    [super didReceiveMemoryWarning];

}


@end
