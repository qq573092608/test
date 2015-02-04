//
//  PassValueViewController.m
//  block
//
//  Created by mac on 15/2/4.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "PassValueViewController.h"

@interface PassValueViewController ()

@end

@implementation PassValueViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

//将前一个页面的block传递过来
-(void)passValueAction:(PassValue) mypassvalue{
    self.pv=mypassvalue;
}

-(void)viewWillDisappear:(BOOL)animated{
    self.pv(_valueText.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
