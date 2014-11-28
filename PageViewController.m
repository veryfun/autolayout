//
//  PageViewController.m
//  6And6PlusFit
//
//  Created by 夏科杰 on 14/11/25.
//  Copyright (c) 2014年 夏科杰. All rights reserved.
//

#import "PageViewController.h"

@interface PageViewController ()

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor yellowColor];

    UIView *blueView = [[UIView alloc] init];
    
    blueView.backgroundColor = [UIColor blueColor];
    
    [blueView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.view addSubview:blueView];
    
    UIView *blueView1 = [[UIView alloc] init];
    
    blueView1.backgroundColor = [UIColor blueColor];
    
    [blueView1 setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.view addSubview:blueView1];
    
    UIView *blueView2 = [[UIView alloc] init];
    
    blueView2.backgroundColor = [UIColor blueColor];
    
    [blueView2 setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.view addSubview:blueView2];
    
    UIView *blueView3 = [[UIView alloc] init];
    
    blueView3.backgroundColor = [UIColor blueColor];
    
    [blueView3 setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.view addSubview:blueView3];
    NSDictionary *viewDict = NSDictionaryOfVariableBindings(blueView, blueView1, blueView2, blueView3);
    
    NSString *usernameImageFormatHorizontal = [NSString stringWithFormat:@"|-%f-[blueView]-%f-|", 50.0, 50.0];
    NSString *usernameImageFormatVertical   = [NSString stringWithFormat:@"V:|-%f-[blueView(%f)]", 110.0, 50.0];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:usernameImageFormatHorizontal
                                             options:0
                                             metrics:nil
                                               views:viewDict]
     ];
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:usernameImageFormatVertical
                                             options:0
                                             metrics:nil
                                               views:viewDict]
     ];
    
    NSString *usernameImageFormatHorizontal1 = [NSString stringWithFormat:@"|-%f-[blueView1(%f)]", 180.0, 70.0];
    NSString *usernameImageFormatVertical1 = [NSString stringWithFormat:@"V:|-%f-[blueView1(%f)]", 190.0, 29.0];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:usernameImageFormatHorizontal1
                                             options:0
                                             metrics:nil
                                               views:viewDict]
     ];
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:usernameImageFormatVertical1
                                             options:0
                                             metrics:nil
                                               views:viewDict]
     ];
    NSString *usernameImageFormatHorizontal2 = [NSString stringWithFormat:@"|-%f-[blueView2(%f)]", 250.0, 70.0];
    NSString *usernameImageFormatVertical2 = [NSString stringWithFormat:@"V:|-%f-[blueView2(%f)]", 260.0, 29.0];
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:usernameImageFormatHorizontal2
                                             options:0
                                             metrics:nil
                                               views:viewDict]
     ];
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:usernameImageFormatVertical2
                                             options:0
                                             metrics:nil
                                               views:viewDict]
     ];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
