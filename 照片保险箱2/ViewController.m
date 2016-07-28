//
//  ViewController.m
//  照片保险箱2
//
//  Created by yangqinglong on 16/3/12.
//  Copyright © 2016年 杨清龙. All rights reserved.
//

#import "ViewController.h"
#import "Factory.h"
@interface ViewController ()
@property (nonatomic,strong) UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建左右按钮
    [Factory barButtonItemWithTitle:@"编辑" target:self action:@selector(editButtonDidClicked:) posion:kBarButtonPositionRight navigationItem:self.navigationItem];
    
    [Factory barButtonITemWithNormalImage:[UIImage imageNamed:@"Main_ToolBar_Icon_AddFolder"] highLightImage:[UIImage imageNamed:@"bg"] target:self action:@selector(addAlbum:) Position:kBarButtonPositionLeft navigationItem:self.navigationItem];
    //创建tableView
}
-(void)editButtonDidClicked:(UIBarButtonItem *)buttonItem{
    
     }
-(void)addAlbum:(UIBarButtonItem *)buttonItem{
    
}

@end
