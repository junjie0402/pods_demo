//
//  ViewController.m
//  pods_demo
//
//  Created by junjie xian on 2020/4/11.
//  Copyright © 2020 junjie xian. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

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
    
    UIView *masView = [[UIView alloc] init];
    masView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:masView];
    [masView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(label).offset(30);
        make.top.equalTo(label).offset(label.bounds.size.height + 30);
        make.size.mas_equalTo(CGSizeMake(50, 50));
    }];
}


@end
