//
//  ViewController.m
//  CollectionView
//
//  Created by Vidyashri on 07/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import "ViewController.h"
#import "TrackCellCollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize collectionview;
@synthesize tracks;
@synthesize secondTrack;
@synthesize shareButton;

NSArray* finalTrack;
BOOL shareEnabled;
NSMutableArray *selectedRecipes;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tracks = [NSArray arrayWithObjects:@"Linkin park", @"Imagine", @"Queen", @"Yahoo", nil];
    self.secondTrack = [NSArray arrayWithObjects:@"Sachin", @"Dhoni", @"Rahul", @"Sehwag", nil];
    
    selectedRecipes = [NSMutableArray array];
    
    finalTrack = [NSArray arrayWithObjects:tracks, secondTrack, nil];
    
    UICollectionViewFlowLayout *collectionViewLayout = (UICollectionViewFlowLayout*)self.collectionview.collectionViewLayout;
    collectionViewLayout.sectionInset = UIEdgeInsetsMake(20, 0, 20, 0);
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[finalTrack objectAtIndex:section] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"TrackCell";
    
    TrackCellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    NSString *text = [finalTrack[indexPath.section] objectAtIndex:indexPath.row];
    cell.name.text = text;
    
    if(shareEnabled){
        cell.backgroundColor = UIColor.orangeColor;
    }
    
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return [finalTrack count];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (shareEnabled) {
        // Determine the selected items by using the indexPath
        NSString *selectedRecipe = [finalTrack[indexPath.section] objectAtIndex:indexPath.row];
        // Add the selected item into the array
        [selectedRecipes addObject:selectedRecipe];
    }
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (shareEnabled) {
        NSString *deSelectedRecipe = [finalTrack[indexPath.section] objectAtIndex:indexPath.row];
        [selectedRecipes removeObject:deSelectedRecipe];
    }
}

@end
