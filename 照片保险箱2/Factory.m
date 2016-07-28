//
//  Factory.m
//  照片保险箱2
//
//  Created by yangqinglong on 16/3/12.
//  Copyright © 2016年 杨清龙. All rights reserved.
//

#import "Factory.h"

@implementation Factory
+(UIBarButtonItem *)barButtonItemWithTitle:(NSString *)title target:(id)target action:(SEL)action posion:(kBarButtonPosition)position navigationItem:(UINavigationItem *)navigationItem{
    //创建BarButtonItem
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithTitle:title style:UIBarButtonItemStylePlain target:target action:action];
    if (position == kBarButtonPositionLeft) {
        navigationItem.leftBarButtonItem = item;
    }else{
        navigationItem.rightBarButtonItem = item;
    }
    return item;
}
+(UIBarButtonItem *)barButtonITemWithNormalImage:(UIImage *)normalImage highLightImage:(UIImage *)hightLightImage target:(id)target action:(SEL)action Position:(kBarButtonPosition)position navigationItem:(UINavigationItem *)navigationItem{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(0, 0, 44, 44);
    [btn setImage:normalImage forState:UIControlStateNormal];
    [btn setImage:hightLightImage forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:btn];
    if (position == kBarButtonPositionLeft) {
        navigationItem.leftBarButtonItem = item;
    }else {
        navigationItem.rightBarButtonItem = item;
    }
    return item;
}

@end









