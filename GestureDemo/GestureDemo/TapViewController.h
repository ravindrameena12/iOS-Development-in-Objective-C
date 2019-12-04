//
//  TapViewController.h
//  GestureDemo
//
//  Created by Vidyashri on 13/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TapViewController : UIViewController

-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer;
@property (weak, nonatomic) IBOutlet UIView *testView;

@end

NS_ASSUME_NONNULL_END
