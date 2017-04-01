//
//  BBMainViewController.m
//  UIViewController-Category
//
//  Created by wave on 15/12/11.
//  Copyright © 2015年 wave. All rights reserved.
//

#import "BBMainViewController.h"
#import "BBTotalCategory.h"

@interface BBMainViewController ()

@end

@implementation BBMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.view.backgroundColor = [UIColor whiteColor];

}


/// 打印所有字体
-(void)totalFont
{
        NSMutableArray *fontNames = [[NSMutableArray alloc] init];
        NSArray *fontFamilyNames = [UIFont familyNames];
        for (NSString *familyName in fontFamilyNames) {
            NSLog(@"Font Family Name = %@", familyName);
            NSArray *names = [UIFont fontNamesForFamilyName:familyName];
            NSLog(@"Font Names = %@", fontNames);
            [fontNames addObjectsFromArray:names];
        }
}



@end
