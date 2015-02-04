//
//  TestInfo.h
//  block
//
//  Created by mac on 15/2/4.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestInfo : NSObject

@property(nonatomic,retain) NSString *name,*passWord;

-(instancetype)initWithName:(NSString *)name AndPassWord:(NSString *)passWord;


@end
