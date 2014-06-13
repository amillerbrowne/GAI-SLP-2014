//
//  ViewController.m
//  Table
//
//  Created by Alexandra Miller-Browne on 6/13/14.
//  Copyright (c) 2014 Alexandra Miller-Browne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray * housing;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	housing = [NSArray arrayWithObjects:@"Myles Standish Hall", @"Myles Annex", @"Kilachand Hall", @"Towers", @"Warren Towers", @"Rich Hall", @"Sleeper Hall", @"Claflin Hall", @"StuVi1", @"StuVi2", @"South Campus", @"Bay State Brownstones", @"HoJo", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [housing count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableIdentifier = @"TableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableIdentifier];
    }
    
    cell.textLabel.text = [housing objectAtIndex:indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
