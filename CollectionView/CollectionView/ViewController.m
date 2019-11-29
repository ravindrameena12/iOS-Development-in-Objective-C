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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tracks = [NSArray arrayWithObjects:@"Linkin park", @"Imagine", @"Queen", @"Yahoo", nil];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.tracks.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"TrackCell";
    
    TrackCellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    NSString *text = [self.tracks objectAtIndex:indexPath.row];
    cell.name.text = text;
    
    
    return cell;
}


@end
