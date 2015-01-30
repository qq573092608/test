//
//  MainViewController.m
//  UISegmentedControlDEMO
//
//  Created by mac on 15/1/30.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "MainViewController.h"

#import "OneViewController.h"
#import "TwoViewController.h"

@interface MainViewController (){

    OneViewController *oneVC;
    TwoViewController  *twoVC;
}

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSArray *arr=[NSArray arrayWithObjects:@"我收到的",@"我递送的", nil];
    //默认会为每一个数组里面的元素填充对应的selecterSegmentIndex的数值 从0开始
    UISegmentedControl *segmentVC=[[UISegmentedControl alloc] initWithItems:arr];
    
    segmentVC.selectedSegmentIndex=0;
    [segmentVC addTarget:self action:@selector(changeView:) forControlEvents:UIControlEventValueChanged];
    //将其添加到UINavgationBar当中
    self.navigationItem.titleView=segmentVC;
    
    oneVC=[[OneViewController alloc] init];
    twoVC=[[TwoViewController alloc] init];
    
    //设定显示隐藏的顺序
    oneVC.view.hidden=NO;
    twoVC.view.hidden=YES;
    
    [self.view addSubview:oneVC.view];
    [self.view addSubview:twoVC.view];
}

//改变视图
-(void)changeView:(UISegmentedControl *)sender{

        //sender.selectedSegmentIndex
    NSLog(@"点击信息:%ld",(long)sender.selectedSegmentIndex);
    if (0==sender.selectedSegmentIndex) {
        oneVC.view.hidden=NO;
        twoVC.view.hidden=YES;
    }else{
        oneVC.view.hidden=YES;
        twoVC.view.hidden=NO;
    }

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
