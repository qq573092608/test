//
//  PickerViewController.h
//  pickerView
//
//  Created by mac on 15/2/1.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZHPickView.h"
@interface PickerViewController : UIViewController<ZHPickViewDelegate>
@property(nonatomic,strong)ZHPickView *pickView;

@property (weak, nonatomic) IBOutlet UILabel *lbl_info;

- (IBAction)click_action:(id)sender;

@end
