//
//  ViewController.h
//  CollectionView
//
//  Created by Vidyashri on 07/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionview;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;
@property (strong, nonatomic) NSArray* tracks;
@property (strong, nonatomic) NSArray* secondTrack;
- (IBAction)shareButtonTouched:(id)sender;

@end

