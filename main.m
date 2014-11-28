//
//  main.m
//  6And6PlusFit
//
//  Created by 夏科杰 on 14/11/25.
//  Copyright (c) 2014年 夏科杰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
       
        @try {
            return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        }
        @catch (NSException *exception) {
            NSLog(@"闪退原因：%@",exception);
        }
        @finally {
            
        }
        
    }
}
