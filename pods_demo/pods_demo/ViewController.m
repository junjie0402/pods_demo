//
//  ViewController.m
//  pods_demo
//
//  Created by junjie xian on 2020/4/11.
//  Copyright © 2020 junjie xian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect rect = [UIScreen mainScreen].bounds;
    
    CGFloat width = 200;
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake((rect.size.width-width)/2, 200, width, 100);
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor lightGrayColor];
    label.font = [UIFont systemFontOfSize:30];
    label.text = @"pods_demo";
    label.textColor = [UIColor blackColor];
    [self.view addSubview:label];
}


@end
