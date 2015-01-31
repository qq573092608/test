//
//  SecondViewController.h
//  block
//
//  Created by mac on 15/1/31.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^ReturnTextBlock)(NSString *showText);//重新定义了一个名字
@interface SecondViewController : UIViewController

@property (nonatomic,retain)UITextField *tf;

@property (nonatomic,copy) ReturnTextBlock returnTextBlock;//定义的一个Block属性

- (void)returnText:(ReturnTextBlock)block;

@end
