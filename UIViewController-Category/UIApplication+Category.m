//
//  UIApplication+Category.m
//  UIViewController-Category
//
//  Created by wave on 15/12/11.
//  Copyright © 2015年 wave. All rights reserved.
//

#import "UIApplication+Category.h"
#import <SafariServices/SafariServices.h>
#import "UIWindow+Category.h"

@implementation UIApplication (Category)

-(void)bb_openURL:(NSURL *)URL{
    
    if ([[[UIDevice currentDevice]systemVersion]floatValue] > 9.0 ) {
        SFSafariViewController *safariViewController = [[SFSafariViewController alloc] initWithURL:URL];
        [[UIApplication sharedApplication].keyWindow.topViewController presentViewController:safariViewController animated:YES completion:nil];
    } else {
        [[UIApplication sharedApplication] openURL:URL];
    }
}

@end
