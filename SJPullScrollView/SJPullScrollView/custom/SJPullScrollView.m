//
//  SJPullScrollView.m
//  SJPullScrollView
//
//  Created by tuandai on 16/3/24.
//  Copyright © 2016年 sj. All rights reserved.
//

#import "SJPullScrollView.h"


@implementation SJPullScrollView

- (void)willMoveToSuperview:(UIView *)newSuperview {
    
    [super willMoveToSuperview:newSuperview];
    
    _BottomScrollView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [_BottomScrollView.mj_footer endRefreshing];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [UIView animateWithDuration:.3 animations:^{
                    _FooterScrollView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
                }];
            });
        });
    }];
    
    _FooterScrollView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        
        [_FooterScrollView.mj_header endRefreshing];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [UIView animateWithDuration:.3 animations:^{
                _FooterScrollView.frame = CGRectMake(0, self.frame.size.height, self.frame.size.width, self.frame.size.height);
            }];
        });
        
        
    }];
}


-(void)layoutSubviews {
    
    [super layoutSubviews];

    _BottomScrollView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    _BottomScrollView.contentSize = CGSizeMake(CGRectGetWidth(self.frame), CGRectGetHeight(self.frame)*1.1);
    
    _FooterScrollView.frame = CGRectMake(0, self.frame.size.height, self.frame.size.width, self.frame.size.height);
    _FooterScrollView.contentSize = CGSizeMake(CGRectGetWidth(self.frame), CGRectGetHeight(self.frame)*1.1);
    
}

#pragma mark - 懒加载

-(UIScrollView *)BottomScrollView {
    
    if (!_BottomScrollView) {
        UIScrollView *BottomScrollView = [[UIScrollView alloc] init];
        BottomScrollView.backgroundColor = [UIColor whiteColor];
        [self addSubview:_BottomScrollView = BottomScrollView];
    }
    
    return _BottomScrollView;
}


- (UIScrollView *)FooterScrollView {
    
    if (!_FooterScrollView) {
        UIScrollView *FooterScrollView = [[UIScrollView alloc] init];
        
        FooterScrollView.backgroundColor = [UIColor blackColor];
        [self addSubview:_FooterScrollView = FooterScrollView];
    }
    return _FooterScrollView;
    
}



@end
