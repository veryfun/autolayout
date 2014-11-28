//
//  IOSFitClass.m
//  6And6PlusFit
//
//  Created by 夏科杰 on 14/11/26.
//  Copyright (c) 2014年 夏科杰. All rights reserved.
//

#import "IOSFitClass.h"
#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHE [[UIScreen mainScreen] bounds].size.height
@implementation IOSFitClass
+ (void)setEdge:(UIView*)superview
           view:(UIView*)view
         insets:(UIEdgeInsets)insets
{
    if([superview respondsToSelector:@selector(addConstraints:)]){
        [view setTranslatesAutoresizingMaskIntoConstraints:NO];
        [superview addConstraint:[NSLayoutConstraint constraintWithItem:view
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:superview
                                                              attribute:NSLayoutAttributeTop
                                                             multiplier:1.0
                                                               constant:insets.top]];
        [superview addConstraint:[NSLayoutConstraint constraintWithItem:view
                                                              attribute:NSLayoutAttributeLeft
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:superview
                                                              attribute:NSLayoutAttributeLeft
                                                             multiplier:1.0
                                                               constant:insets.left]];
        [superview addConstraint:[NSLayoutConstraint constraintWithItem:view
                                                              attribute:NSLayoutAttributeBottom
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:superview
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1.0
                                                               constant:(-insets.bottom)]];
        [superview addConstraint:[NSLayoutConstraint constraintWithItem:view
                                                              attribute:NSLayoutAttributeRight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:superview
                                                              attribute:NSLayoutAttributeRight
                                                             multiplier:1.0
                                                               constant:(-insets.right)]];
    }
   
}

+ (void)setEdge:(UIView*)superview
           view:(UIView*)view
          frame:(CGRect)frame
{
    if([superview respondsToSelector:@selector(addConstraints:)]){
    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
    //像素x
    [superview addConstraint:[NSLayoutConstraint constraintWithItem:view
                                                          attribute:NSLayoutAttributeLeft
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:superview
                                                          attribute:NSLayoutAttributeLeft
                                                         multiplier:0
                                                           constant:frame.origin.x]];
    //像素y
    [superview addConstraint:[NSLayoutConstraint constraintWithItem:view
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:superview
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:0
                                                           constant:frame.origin.y]];
    //比例宽度
    [superview addConstraint:[NSLayoutConstraint constraintWithItem:view
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:superview
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:frame.size.width                                                                   constant:0]];
    //比例高度
    [superview addConstraint:[NSLayoutConstraint constraintWithItem:view
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:superview
                                                          attribute:NSLayoutAttributeHeight
                                                         multiplier:frame.size.height
                                                           constant:0]];
    }
    
}

+(void)setView:(UIView *)view
         frame:(CGRect)frame
{
    view.translatesAutoresizingMaskIntoConstraints = YES;
    view.frame=CGRectMake(frame.origin.x/320*SCREEN_WIDTH, frame.origin.y/568*SCREEN_HEIGHE, frame.size.width/320*SCREEN_WIDTH,  frame.size.height/568*SCREEN_HEIGHE);
}

@end
