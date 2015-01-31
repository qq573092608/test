//
//  BlockDemoViewController.h
//  block
//
//  Created by mac on 15/1/31.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlockDemoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lbl;



@property (weak, nonatomic) IBOutlet UIButton *btn;
- (IBAction)changeColor:(id)sender;

@end
