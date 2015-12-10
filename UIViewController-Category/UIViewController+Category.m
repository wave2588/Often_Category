//
//  UIViewController+Category.m
//  UIViewController-Category
//
//  Created by wave on 15/12/11.
//  Copyright © 2015年 wave. All rights reserved.
//

#import "UIViewController+Category.h"

@implementation UIViewController (Category)

- (BOOL)isPresented
{
    return self.presentingViewController.presentedViewController == self
    || self.navigationController.presentingViewController.presentedViewController == self.navigationController
    || [self.tabBarController.presentingViewController isKindOfClass:[UITabBarController class]];
}

@end
