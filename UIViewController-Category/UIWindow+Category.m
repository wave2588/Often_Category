//
//  UIWindow+Category.m
//  UIViewController-Category
//
//  Created by wave on 15/12/11.
//  Copyright © 2015年 wave. All rights reserved.
//

#import "UIWindow+Category.h"

@implementation UIWindow (Category)

- (UIViewController *)topViewController
{
    return [self __topViewControllerWithRootViewController:self.rootViewController];
}

- (UIViewController *)__topViewControllerWithRootViewController:(UIViewController *)rootViewController
{
    // Handling UITabBarController
    if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabBarController = (UITabBarController *) rootViewController;
        return [self __topViewControllerWithRootViewController:tabBarController.selectedViewController];
    } else if ([rootViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navigationController = (UINavigationController *) rootViewController;
        return [self __topViewControllerWithRootViewController:navigationController.visibleViewController];
    } else if (rootViewController.presentedViewController) {
        UIViewController *presentedViewController = rootViewController.presentedViewController;
        return [self __topViewControllerWithRootViewController:presentedViewController];
    } else {
        for (UIView *view in [rootViewController.view subviews]) {
            id subViewController = [view nextResponder];    // Key property which most of us are unaware of / rarely use.
            if (subViewController && [subViewController isKindOfClass:[UIViewController class]]) {
                return [self __topViewControllerWithRootViewController:subViewController];
            }
        }
        return rootViewController;
    }
}

@end
