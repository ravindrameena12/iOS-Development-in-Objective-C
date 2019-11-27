//
//  SecondViewController.m
//  TableViewProject
//
//  Created by Vidyashri on 06/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize recipeLabel;
@synthesize musicImage;
@synthesize recipeName;
@synthesize musicImageString;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    recipeLabel.text = recipeName;
    musicImage.image = [UIImage imageNamed:musicImageString];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
