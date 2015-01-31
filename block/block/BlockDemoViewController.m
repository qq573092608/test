//
//  BlockDemoViewController.m
//  block
//
//  Created by mac on 15/1/31.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//
#import "BlockDemoViewController.h"
#import "ShowColor.h"

@interface BlockDemoViewController ()

@end

@implementation BlockDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)changeColor:(id)sender {
    CGRect temp = CGRectMake(self.btn.frame.origin.x, self.btn.frame.origin.y, self.btn.frame.size.width+50, self.btn.frame.size.height+20);
    [ShowColor ChangeRootViewBtnRect:temp
                     blockcompletion:^(NSString  *colorEnum) {
                         //设置按钮的背景颜色
                         //_btn.backgroundColor=[UIColor redColor];
                         _lbl.text=@"标签的内容....";
    }];
}
@end
