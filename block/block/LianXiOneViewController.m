//
//  LianXiOneViewController.m
//  block
//
//  Created by mac on 15/2/1.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "LianXiOneViewController.h"
#import "LianXiTwoViewController.h"
@interface LianXiOneViewController ()

@end

@implementation LianXiOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (IBAction)nextIn:(id)sender {
    LianXiTwoViewController *lianxiTwo=[[LianXiTwoViewController alloc] init];
    [lianxiTwo passMyValue:^(NSString * value) {
        NSLog(@"第二步....");
        _lbl.text=value;
    }];
    
    [self.navigationController pushViewController:lianxiTwo animated:YES];
    
}
@end
