//
//  PickerViewController.m
//  pickerView
//
//  Created by mac on 15/2/1.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "PickerViewController.h"
#import "ZHPickView.h"
@interface PickerViewController ()

@end

@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)click_action:(id)sender {
    NSDate *date=[NSDate dateWithTimeIntervalSinceNow:9000000];
    //_pickView=[[ZHPickView alloc] initDatePickWithDate:date datePickerMode:UIDatePickerModeDate isHaveNavControler:NO];
    
        _pickView=[[ZHPickView alloc] initPickviewWithPlistName:@"city" isHaveNavControler:NO];
    _pickView.delegate=self;
    [_pickView show];
}

-(void)toobarDonBtnHaveClick:(ZHPickView *)pickView resultString:(NSString *)resultString{
    _lbl_info.text=resultString;
}
@end
