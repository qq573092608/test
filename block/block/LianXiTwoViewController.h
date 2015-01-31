//
//  LianXiTwoViewController.h
//  block
//
//  Created by mac on 15/2/1.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^passValue)(NSString * myValue);

@interface LianXiTwoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *text_info;

@property (nonatomic,copy) passValue pv;

-(void)passMyValue:(passValue)passMyValue;

@end
