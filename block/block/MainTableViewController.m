//
//  MainTableViewController.m
//  block
//
//  Created by mac on 15/2/4.
//  Copyright (c) 2015年 武汉亦鸟科技有限公司. All rights reserved.
//

#import "MainTableViewController.h"
#import "PassValueViewController.h"
#import "TestInfo.h"


@interface MainTableViewController ()

@property (nonatomic,retain)TestInfo *test;

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.tableFooterView=[[UIView alloc] init];
   _test=[[TestInfo alloc] initWithName:@"姓名" AndPassWord:@"密码"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier=@"Cell";
    //添加解决问题的核心代码
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if(cell==nil){
        
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    NSUInteger row = [indexPath row];
    if (0==row) {
       cell.textLabel.text=self.test.name;
    }else if(1==row){
    
//        UILabel *lbl=[[UILabel alloc] init];
//        lbl.frame=CGRectMake(self.view.frame.size.width-200, 0, 150, 40);
//        lbl.text=self.test.passWord;
//        [cell.contentView addSubview:lbl];
        
        
        cell.textLabel.text=self.test.passWord;
   }
    
    return cell;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    int row=[indexPath row];
    PassValueViewController *passValue=[[PassValueViewController alloc] init];
    __block MainTableViewController  *wself=self;

    
    if (0==row) {
        
        [passValue passValueAction:^(NSString *value) {
            NSLog(@"用户名信息是:%@",value);
            wself.test.name=value;
            [wself.tableView reloadData];
        }];
        
        [self.navigationController pushViewController:passValue animated:YES];
    }else if(1==row){
        [passValue passValueAction:^(NSString *value) {
            NSLog(@"密码信息是:%@",value);
            wself.test.passWord=value;
            [wself.tableView reloadData];
        }];
        
        [self.navigationController pushViewController:passValue animated:YES];
    }

}

@end
