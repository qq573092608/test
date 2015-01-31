//
//  AppDelegate.m
//  block
//
//  Created by mac on 15/1/31.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "AppDelegate.h"
#import "BlockViewController.h"

#import "BlockDemoViewController.h"
#import "FirstViewController.h"

#import "LianXiOneViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window=[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //self.window.rootViewController=[[BlockViewController alloc] init];
    
    //self.window.rootViewController=[[BlockDemoViewController alloc] init];
    
   // FirstViewController *firstVC=[[FirstViewController alloc] init];
    
    LianXiOneViewController *oneVC=[[LianXiOneViewController alloc] init];
    
    UINavigationController *nav=[[UINavigationController alloc] initWithRootViewController:oneVC];
    self.window.rootViewController=nav;
    
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
