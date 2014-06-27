//
//  ViewController.m
//  Alert
//
//  Created by Alexandra Miller-Browne on 6/27/14.
//  Copyright (c) 2014 Alexandra Miller-Browne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
   [super viewDidLoad];
    
    //this alert view accounts for two inputs from the user
    UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"Login"
                                               message:@"Enter Username & Password"
                                               delegate:self cancelButtonTitle:@"Cancel"
                                               otherButtonTitles: nil];
    alert.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [alert addButtonWithTitle:@"Login"];
    [alert show];
}

//this method records the username and password in the console
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1)
    {
        UITextField *username = [alertView textFieldAtIndex:0];
        NSLog(@"username: %@", username.text);
        
        UITextField *password = [alertView textFieldAtIndex:1];
        password.secureTextEntry = YES;
        NSLog(@"password: %@", password.text);
        
    }
}

    /* BASIC ALERT VIEW MESSAGE
    //initializes the alert view pop up
    UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"Alert!"
                                                     message:@"Fix this"
                                                    delegate:self
                                           cancelButtonTitle:@"Cancel"
                                           otherButtonTitles: nil];
    [alert addButtonWithTitle:@"Ok"];//comment out if only want 1 button
    [alert show];
}

//prints messages to the console to see if the button clicked event works and the view goes away after
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"Button Index =%ld",(long)buttonIndex);
    if (buttonIndex == 0)
    {
        NSLog(@"You have clicked Cancel");
    }
    else if(buttonIndex == 1)
    {
        NSLog(@"You have clicked Ok");
    }
} */

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
