//
//  MainViewController.m
//  sheetActionPicker
//
//  Created by mac on 15/2/1.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "MainViewController.h"
#import "ActionSheetStringPicker.h"



@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)pickerTest:(id)sender {
    [ActionSheetStringPicker showPickerWithTitle:nil rows:@[@[@"男", @"女", @"未知"]] initialSelection:@[@"aa"] doneBlock:^(ActionSheetStringPicker *picker, NSArray * selectedIndex, NSArray *selectedValue) {
       
         } cancelBlock:nil origin:self.view];
    
    
}
@end
