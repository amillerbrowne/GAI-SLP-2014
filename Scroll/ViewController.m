//
//  ViewController.m
//  Scroll
//
//  Created by Alexandra Miller-Browne on 5/28/14.
//  Copyright (c) 2014 Alexandra Miller-Browne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //this property detects touch events and enables the scrolling function when it is set to YES
    [scrollView setScrollEnabled:YES];
    
    //this property sets the content size of the scroll view to the desired width and height
    [scrollView setContentSize:CGSizeMake(320, 1394)];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
