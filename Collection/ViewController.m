//
//  ViewController.m
//  Collection
//
//  Created by Alexandra Miller-Browne on 7/8/14.
//  Copyright (c) 2014 Alexandra Miller-Browne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSMutableArray * array;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	array = [[NSMutableArray alloc] init];
    
    [array addObject:@"hello"];
    [array addObject:@"this"];
    [array addObject:@"is"];
    [array addObject:@"a"];
    [array addObject:@"test"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//number of sections you have in your collection
-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

//returns what content is in those sections
-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [array count];
}

//customized the cells to be circles with white borders and a black background
-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    UILabel * label = (UILabel *)[cell viewWithTag:100];
    label.text = [array objectAtIndex:indexPath.row];
    
    [cell.layer setBorderWidth:2.0f];
    [cell.layer setBorderColor:[UIColor whiteColor].CGColor];
    [cell.layer setCornerRadius:50.0f];
    
    return cell;
}

/* programmatically set up collection view
 
 {
 self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
 
 //sets up collection view layout and calls the dataSource and delegate
 
 UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
 _collectionView=[[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
 [_collectionView setDataSource:self];
 [_collectionView setDelegate:self];
 
 [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
 [_collectionView setBackgroundColor:[UIColor whiteColor]];
 
 [self.view addSubview:_collectionView];
 
 [super viewDidLoad];
 }
 
 //number of cells in the collection view
 - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
 {
 return 12;
 }
 
 //this method helps with the creation and arrrangement of the cells in your collection; can use to change color, add pictures or add text (with a label already in place)
 - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
 {
 UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
 
 cell.backgroundColor=[UIColor blueColor];
 return cell;
 }
 
 // this method determines the size/layout of your cells
 - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
 {
 return CGSizeMake(100, 100);
 } */

@end
