//
//  TestInfo.m
//  block
//
//  Created by mac on 15/2/4.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "TestInfo.h"

@implementation TestInfo

-(instancetype)initWithName:(NSString *)name AndPassWord:(NSString *)passWord{
    self=[super init];
    
    if (self) {
        self.name=name;
        self.passWord=passWord;
    }
    return self;
}


@end
