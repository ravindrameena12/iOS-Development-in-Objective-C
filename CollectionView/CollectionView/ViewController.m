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

NSArray* finalTrack;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tracks = [NSArray arrayWithObjects:@"Linkin park", @"Imagine", @"Queen", @"Yahoo", nil];
    self.secondTrack = [NSArray arrayWithObjects:@"Sachin", @"Dhoni", @"Rahul", @"Sehwag", nil];
    
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
    
    
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return [finalTrack count];
}


@end
