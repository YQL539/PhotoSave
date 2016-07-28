//
//  Factory.h
//  照片保险箱2
//
//  Created by yangqinglong on 16/3/12.
//  Copyright © 2016年 杨清龙. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum {
    kBarButtonPositionLeft,
    kBarButtonPositionRight
}kBarButtonPosition;

@interface Factory : NSObject

/**创建导航栏上的Item */
+(UIBarButtonItem *)barButtonItemWithTitle:(NSString *)title
                                    target:(id)target
                                    action:(SEL)action
                                    posion:(kBarButtonPosition)position
                            navigationItem:(UINavigationItem *)navigationItem;

+(UIBarButtonItem *)barButtonITemWithNormalImage:(UIImage *)normalImage
                                  highLightImage:(UIImage *)hightLightImage
                                          target:(id)target
                                          action:(SEL)action
                                        Position:(kBarButtonPosition)position
                                  navigationItem:(UINavigationItem *)navigationItem;
@end
