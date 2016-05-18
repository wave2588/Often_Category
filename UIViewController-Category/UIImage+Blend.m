//
//  UIImage+Blend.m
//  UIViewController-Category
//
//  Created by wave on 16/5/18.
//  Copyright © 2016年 wave. All rights reserved.
//

#import "UIImage+Blend.h"

@implementation UIImage (Blend)

- (UIImage *)imageBlendedWithImage:(UIImage *)overlayImage blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha {
    
    UIGraphicsBeginImageContext(self.size);
    
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    [self drawInRect:rect];
    
    [overlayImage drawAtPoint:CGPointMake(0, 0) blendMode:blendMode alpha:alpha];
    
    UIImage *blendedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return blendedImage;
}

+ (UIImage *)getImage:(NSString *)imagePath
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if ([fileManager fileExistsAtPath:imagePath]){
        
        return [UIImage imageWithContentsOfFile:imagePath];
        
    }else{
        
        return [UIImage imageNamed:@"tuichu"];
    }
}

@end
