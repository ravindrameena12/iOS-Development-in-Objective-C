//
//  ViewController.m
//  ActionSheetDemo
//
//  Created by Vidyashri on 12/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)showNormalActionSheet:(id)sender {
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"What do you want to do with the file?"
                                                             delegate:self
                                                    cancelButtonTitle:@"Cancel"
                                               destructiveButtonTitle:@"Delete it"
                                                    otherButtonTitles:@"Copy", @"Move", @"Duplicate", nil];
    
     [actionSheet showInView:self.view];
}

- (IBAction)showDeleteConfirmation:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Really delete the selected contact?"
                                                             delegate:self
                                                    cancelButtonTitle:@"No, I changed my mind"
                                               destructiveButtonTitle:@"Yes, delete it"
                                                    otherButtonTitles:nil];
    
    [actionSheet showInView:self.view];
}

- (IBAction)showColorsActionSheet:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Pick a color:"
                                                             delegate:self
                                                    cancelButtonTitle:nil
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"Red", @"Green", @"Blue", @"Orange", @"Purple", nil];
    
    [actionSheet showInView:self.view];
}

@end
