//
//  ViewController.m
//  contentSize
//
//  Created by Trung Bao on 12/7/15.
//  Copyright © 2015 Trung Bao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIScrollView* scrollView;
    UIImage* photo;
    UIImageView* screen;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    photo = [UIImage imageNamed:@"images"];
    scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(8, 20, self.view.bounds.size.width - 16, self.view.bounds.size.height - 40)];
    scrollView.backgroundColor = [UIColor greenColor];
    scrollView.contentSize = CGSizeMake(photo.size.width, photo.size.height);
    scrollView.bounces = true;
    scrollView.showsHorizontalScrollIndicator = true;
    scrollView.showsVerticalScrollIndicator = true;
    screen = [[UIImageView alloc] initWithImage:photo];
    [screen sizeToFit];
    screen.frame = CGRectMake(0, 0, photo.size.width, photo.size.height);
    [scrollView addSubview:screen];
    [self.view addSubview:scrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
