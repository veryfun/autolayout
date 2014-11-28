//
//  IOSFitClass.h
//  6And6PlusFit
//
//  Created by 夏科杰 on 14/11/26.
//  Copyright (c) 2014年 夏科杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface IOSFitClass : NSObject
+ (void)setEdge:(UIView*)superview
           view:(UIView*)view
         insets:(UIEdgeInsets)edgeinsets;
+ (void)setEdge:(UIView*)superview
           view:(UIView*)view
          frame:(CGRect)frame;
+ (void)setView:(UIView *)view
         frame:(CGRect)frame;
@end
