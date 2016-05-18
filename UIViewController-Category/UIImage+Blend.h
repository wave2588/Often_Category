//
//  UIImage+Blend.h
//  UIViewController-Category
//
//  Created by wave on 16/5/18.
//  Copyright © 2016年 wave. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Blend)

- (UIImage *)imageBlendedWithImage:(UIImage *)overlayImage blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;

+ (UIImage *)getImage:(NSString *)imagePath;

@end
