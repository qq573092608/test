//
//  EmojeViewController.m
//  myEmoje
//
//  Created by mac on 15/2/11.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "EmojeViewController.h"
#import "HcCustomKeyboard.h"
@interface EmojeViewController ()<HcCustomKeyboardDelegate>
@end

@implementation EmojeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[HcCustomKeyboard customKeyboard]textViewShowView:self customKeyboardDelegate:self];
    self.view.backgroundColor =[UIColor groupTableViewBackgroundColor];
}

-(void)talkBtnClick:(UITextView *)textViewGet
{
    NSLog(@"%@",textViewGet.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
