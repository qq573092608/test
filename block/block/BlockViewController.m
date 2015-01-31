//
//  BlockViewController.m
//  block
//
//  Created by mac on 15/1/31.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "BlockViewController.h"

@interface BlockViewController ()

@end

@implementation BlockViewController
/*
        block的简单的原理
 */


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"我在玩手机");
    NSLog(@"手机没电了..");
    /*
        [self chargeMyIPhone];
    */
    
    //设定10秒钟以后执行,那个时候电已经充好了
    /*
    [self performSelector:@selector(chargeMyIPhone) withObject:nil afterDelay:10];
   */
    [self chargeMyIPhone:^{
        NSLog(@"出去逛街....");
    }];
    
     NSLog(@"我在看电视...");
}

-(void)chargeMyIPhone:(void(^)(void))finishBlock{
    //异步10秒后回调
    double delayInSeconds = 10.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        
        NSLog(@"电充好了");
        finishBlock();
    });
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    


}

@end
