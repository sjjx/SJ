//
//  SJPullScrollView.h
//  SJPullScrollView
//
//  Created by tuandai on 16/3/24.
//  Copyright © 2016年 sj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MJRefresh.h"
#import "MJRefreshFooter.h"

@interface SJPullScrollView : UIView


@property (nonatomic, strong) UIScrollView *BottomScrollView;

@property (nonatomic, strong) UIScrollView *FooterScrollView;

@end
