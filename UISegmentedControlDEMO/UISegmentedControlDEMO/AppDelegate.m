//
//  AppDelegate.m
//  UISegmentedControlDEMO
//
//  Created by mac on 15/1/30.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window=[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    MainViewController *mainVC=[[MainViewController alloc] init];
    UINavigationController *mainNAV=[[UINavigationController alloc] initWithRootViewController:mainVC];
    self.window.rootViewController=mainNAV;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
