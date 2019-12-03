//
//  ViewController.h
//  ActionSheetDemo
//
//  Created by Vidyashri on 12/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate>

- (IBAction)showNormalActionSheet:(id)sender;

- (IBAction)showDeleteConfirmation:(id)sender;

- (IBAction)showColorsActionSheet:(id)sender;

@end

