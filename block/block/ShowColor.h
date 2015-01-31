//
//  ShowColor.h
//  block
//
//  Created by mac on 15/1/31.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void (^Changcolor)( NSString *colorEnum);


@interface ShowColor : NSObject

//回调函数改变颜色
+(void)ChangeRootViewBtnRect:(CGRect)rect  blockcompletion:(Changcolor)Changcolorblock;


@end
