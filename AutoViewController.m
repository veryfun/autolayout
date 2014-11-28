//
//  AutoViewController.m
//  6And6PlusFit
//
//  Created by 夏科杰 on 14/11/27.
//  Copyright (c) 2014年 夏科杰. All rights reserved.
//

#import "AutoViewController.h"

@interface AutoViewController ()

@end

@implementation AutoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = [UIColor blueColor];
    [blueView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:blueView];

    
    NSDictionary *viewDict = NSDictionaryOfVariableBindings(blueView);
 
    NSDictionary *metrics = @{@"Padding":@50};
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-Padding-[blueView]-Padding-|"
                                             options:0
                                             metrics:metrics
                                               views:viewDict]
     ];
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-Padding-[blueView]-Padding-|"
                                             options:0
                                             metrics:metrics
                                               views:viewDict]
     ];
    
    

    
    
    UIView *blueView1 = [[UIView alloc] init];
    blueView1.backgroundColor = [UIColor redColor];
    [blueView1 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:blueView1];
    
    NSDictionary *viewDict1 = NSDictionaryOfVariableBindings(blueView1);
    
    NSLog(@"%@",viewDict1);
    
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[blueView1]-10-|"
                                             options:0
                                             metrics:metrics
                                               views:viewDict1]
     ];
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[blueView1]-100-|"
                                             options:0
                                             metrics:metrics
                                               views:viewDict1]
     ];
    
    UIView *blueView2 = [[UIView alloc] init];
    blueView2.backgroundColor = [UIColor yellowColor];
    [blueView2 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:blueView2];
    NSDictionary *viewDict2 = NSDictionaryOfVariableBindings(blueView2);
    [self.view addConstraints:
    [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[blueView2(<=300)]-20-|"
                                             options:0
                                             metrics:metrics
                                               views:viewDict2]
     ];
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[blueView2]-100-|"
                                             options:0
                                             metrics:metrics
                                               views:viewDict2]
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
