//
//  ViewController.m
//  SJPullScrollView
//
//  Created by tuandai on 16/3/23.
//  Copyright © 2016年 sj. All rights reserved.
//

#import "ViewController.h"
#import "SJPullScrollView.h"


@interface ViewController ()

@property (nonatomic,strong) SJPullScrollView *pullScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _pullScrollView = [[SJPullScrollView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
    
    _pullScrollView.backgroundColor = [UIColor orangeColor];
    
    UIImageView *beautifulImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)*1.1)];
    beautifulImageView.image = [UIImage imageNamed:@"header.jpg"];
    [_pullScrollView.BottomScrollView addSubview:beautifulImageView];
    
    
    UIImageView *beautifulImageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)*1.1)];
    beautifulImageView2.image = [UIImage imageNamed:@"footer.jpg"];
    [_pullScrollView.FooterScrollView addSubview:beautifulImageView2];
    
    
    [self.view addSubview:_pullScrollView];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
