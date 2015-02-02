//
//  AppDelegate.m
//  pickerView
//
//  Created by mac on 15/2/1.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "AppDelegate.h"
#import "PickerViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window=[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController=[[PickerViewController alloc] init];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
