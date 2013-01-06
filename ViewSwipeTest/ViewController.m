//
//  ViewController.m
//  ViewSwipeTest
//
//  Created by En on 13/1/6.
//  Copyright (c) 2013年 En. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer *swipeGesLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeFunc:)];
    swipeGesLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    UISwipeGestureRecognizer *swipeGesRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeFunc:)];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapFunc:)];
    [viewGes addGestureRecognizer:swipeGesLeft];
    [viewGes addGestureRecognizer:swipeGesRight];
    [viewGes addGestureRecognizer:tapGes];
    isHide = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)swipeFunc:(UISwipeGestureRecognizer *)swipe
{
    if (isHide && swipe.direction == UISwipeGestureRecognizerDirectionRight)
    {
        [UIView animateWithDuration:1 animations:^{
            [viewGes setCenter:CGPointMake(160, 448)];
        } completion:^(BOOL finished) {
            isHide = NO;
        }];
    }
    else if(!isHide && swipe.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        [UIView animateWithDuration:1 animations:^{
            [viewGes setCenter:CGPointMake(-69, 448)];
        } completion:^(BOOL finished) {
            isHide = YES;
        }];
    }
}

-(void)tapFunc:(UITapGestureRecognizer *)tap
{
    if (isHide)
    {
        [UIView animateWithDuration:1 animations:^{
            [viewGes setCenter:CGPointMake(160, 448)];
        } completion:^(BOOL finished) {
            isHide = NO;
        }];
    }
    else
    {
        [UIView animateWithDuration:1 animations:^{
            [viewGes setCenter:CGPointMake(-69, 448)];
        } completion:^(BOOL finished) {
            isHide = YES;
        }];
    }
}
@end
