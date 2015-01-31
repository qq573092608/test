//
//  SecondViewController.m
//  block
//
//  Created by mac on 15/1/31.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(doneBtnClicked:)];
    //定义一个输入框 将文字传给第一个界面，并且显示在UILabel上
    
    self.tf = [[UITextField alloc]initWithFrame:CGRectMake(10,200, 100, 40)];
    
    self.tf.placeholder=@"请输入内容";
    
    [self.view addSubview:self.tf];
    
    //右边button
    UIBarButtonItem *rightBtn=[[UIBarButtonItem alloc] initWithTitle:@"筛选"                                  style:UIBarButtonItemStylePlain
                                                              target:self
                                                              action:@selector(chaxunMethod)];
    self.navigationItem.rightBarButtonItem=rightBtn;
    
}

//在第一个界面传进来一个Block语句块的函数

//把传进来的Block语句块保存到本类的实例变量returnTextBlock（.h中定义的属性）中，然后寻找一个时机调用
-(void)returnText:(ReturnTextBlock)block{
    self.returnTextBlock = block;
}

-(void)chaxunMethod{

    [self.navigationController popViewControllerAnimated:YES];
}


//而这个时机就是当视图将要消失的时候，需要重写：

-(void)viewWillDisappear:(BOOL)animated{
    
    if (self.returnTextBlock !=nil) {
        
        self.returnTextBlock(self.tf.text);
        
        NSLog(@"self.tf.text %@",self.tf.text);
        
    }
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
