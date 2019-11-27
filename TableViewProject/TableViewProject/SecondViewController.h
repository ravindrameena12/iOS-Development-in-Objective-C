//
//  SecondViewController.h
//  TableViewProject
//
//  Created by Vidyashri on 06/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *recipeLabel;
@property (nonatomic, strong) IBOutlet UIImageView *musicImage;
@property (nonatomic, strong) NSString *recipeName;
@property (nonatomic, strong) NSString *musicImageString;

@end

NS_ASSUME_NONNULL_END
