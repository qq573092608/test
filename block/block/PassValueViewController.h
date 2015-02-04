//
//  PassValueViewController.h
//  block
//
//  Created by mac on 15/2/4.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^PassValue)(NSString *value);

@interface PassValueViewController : UIViewController

@property (nonatomic,copy)PassValue pv;

-(void)passValueAction:(PassValue) mypassvalue;

@property (weak, nonatomic) IBOutlet UITextField *valueText;

@end
