//
//  UIWindow+Category.h
//  UIViewController-Category
//
//  Created by wave on 15/12/11.
//  Copyright © 2015年 wave. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWindow (Category)

//返回当前视图最上层的控制器,调用时有性能开销
@property (nonatomic, readonly, strong) UIViewController *topViewController;

@end
