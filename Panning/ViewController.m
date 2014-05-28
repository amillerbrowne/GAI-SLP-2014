//
//  ViewController.m
//  Scrolling
//
//  Created by Alexandra Miller-Browne on 5/27/14.
//  Copyright (c) 2014 Alexandra Miller-Browne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UIImageView * imageView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    //Implementing a single subview that scrolls/pans within the view
    //choose the size of the subview with CGRect: 320 by 480 is the size of iPhone 4
    CGRect scrollFrame = CGRectMake(0, 20, 320, 480);
    
    
    //declaring the variables of the large image, the view to place it in and the scrollview (with respect to the set frame above)
    UIImage *bigImage = [UIImage imageNamed:@"landscape.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:bigImage];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:scrollFrame];
    
    //adding a subview in order to pan around the image
    [scrollView addSubview:imageView];
    scrollView.contentSize = imageView.frame.size;
    [self.view addSubview:scrollView];
    
    //could set the background color to black if don't want the image behind the view
    [scrollView setBackgroundColor:[UIColor blackColor]];
    
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
