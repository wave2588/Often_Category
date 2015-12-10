//
//  UIApplication+Category.h
//  UIViewController-Category
//
//  Created by wave on 15/12/11.
//  Copyright © 2015年 wave. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (Category)

//iOS9以上直接调用内置浏览器打开网页,iOS9以下调用safari打开网页.
-(void)bb_openURL:(NSURL *)URL;

@end
