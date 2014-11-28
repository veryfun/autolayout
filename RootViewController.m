//
//  RootViewController.m
//  6And6PlusFit
//
//  Created by 夏科杰 on 14/11/25.
//  Copyright (c) 2014年 夏科杰. All rights reserved.
//

#import "RootViewController.h"
#define X(x) [UIScreen mainScreen].bounds.size.width*x/320.0
#define Y(y) [UIScreen mainScreen].bounds.size.height*y/568.0
@interface RootViewController ()

@end

@implementation RootViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.translucent = NO;
    NSLog(@"%f,%f,%f,%f",320.0/568.0,[UIScreen mainScreen].bounds.size.width/[UIScreen mainScreen].bounds.size.height,[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor yellowColor];
    //不允许AutoresizingMask转换成Autolayout
    view1.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view1];

    // [view1 SetFrame:CGRectMake(20, 20, -20, -20)];
    //设置左，上，右边距为20.
    

    

    
    //[IOSFitClass setEdge:self.view view:view1 insets:UIEdgeInsetsMake(20, 20, 20, 20)];
     [IOSFitClass setEdge:self.view view:view1 frame:CGRectMake(100, 100, 0.5, 0.5)];
   // [IOSFitClass setView:view1 frame:CGRectMake(20, 20, 160, 100)];
    NSLog(@"%f,%f,%f,%f",view1.frame.origin.x,view1.frame.origin.y,view1.frame.size.width,view1.frame.size.height);
    
    NSLayoutConstraint *con = [NSLayoutConstraint
                               
                               constraintWithItem:view1
                               
                               attribute:NSLayoutAttributeHeight
                               
                               relatedBy:NSLayoutRelationEqual
                               
                               toItem:self.view
                               
                               attribute:NSLayoutAttributeHeight
                               
                               multiplier:0.3
                               
                               constant:0];
    
    con.priority = UILayoutPriorityDefaultLow;
    
   // [self.view addConstraint:con];
    
    NSLayoutConstraint *con1 = [NSLayoutConstraint
                               
                               constraintWithItem:view1
                               
                               attribute:NSLayoutAttributeWidth
                               
                               relatedBy:NSLayoutRelationEqual
                               
                               toItem:self.view
                               
                               attribute:NSLayoutAttributeWidth
                               
                               multiplier:0.5
                               
                               constant:0];
    
    con1.priority = UILayoutPriorityDefaultHigh;
    
    //[self.view addConstraint:con1];
    
//    [self setEdge:self.view view:view1 attr:NSLayoutAttributeLeft constant:20];
//    [self setEdge:self.view view:view1 attr:NSLayoutAttributeTop constant:20];
//    [self setEdge:self.view view:view1 attr:NSLayoutAttributeRight constant:-20];
//    [self setEdge:self.view view:view1 attr:NSLayoutAttributeBottom constant:-20];
    
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor redColor];
    //不允许AutoresizingMask转换成Autolayout
    view2.translatesAutoresizingMaskIntoConstraints = NO;
    [view1 addSubview:view2];
    
    [self setEdge:view1 view:view2 attr:NSLayoutAttributeLeft constant:20];
    [self setEdge:view1 view:view2 attr:NSLayoutAttributeTop constant:20];
    [self setEdge:view1 view:view2 attr:NSLayoutAttributeRight constant:-20];
    [self setEdge:view1 view:view2 attr:NSLayoutAttributeBottom constant:-20];
    
    
    UIButton *bindingBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    bindingBtn.frame = CGRectMake(X(10), Y(180), X(300), Y(45));
    [bindingBtn setTitle:@"立即绑定" forState:UIControlStateNormal];
    [bindingBtn setTitle:@"立即绑定" forState:UIControlStateHighlighted];
    bindingBtn.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    bindingBtn.backgroundColor=[UIColor redColor];
    [bindingBtn addTarget:self action:@selector(bindingAct) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bindingBtn];
    
    
    
    UIButton *bindingBtn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    bindingBtn1.frame = CGRectMake(X(10), Y(260), X(300), Y(45));
    [bindingBtn1 setTitle:@"立即绑定" forState:UIControlStateNormal];
    [bindingBtn1 setTitle:@"立即绑定" forState:UIControlStateHighlighted];
    bindingBtn1.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    bindingBtn1.backgroundColor=[UIColor redColor];
    [bindingBtn1 addTarget:self action:@selector(binding1Act) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bindingBtn1];
    
    // Do any additional setup after loading the view.
}
-(void)binding1Act
{
    [self.navigationController pushViewController:[NSClassFromString(@"AutoViewController") new] animated:YES];
}


-(void)bindingAct
{
    [self.navigationController pushViewController:[NSClassFromString(@"PageViewController") new] animated:YES];
}



- (void)setEdge:(UIView*)superview
           view:(UIView*)view
           attr:(NSLayoutAttribute)attr
       constant:(CGFloat)constant
{
    [superview addConstraint:[NSLayoutConstraint constraintWithItem:view
                                                          attribute:attr
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:superview
                                                          attribute:attr
                                                         multiplier:1.0
                                                           constant:constant]];
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
