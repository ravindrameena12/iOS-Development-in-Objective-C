//
//  DetailViewController.m
//  RSSReader
//
//  Created by Vidyashri on 08/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import "DetailViewController.h"
#import "MasterViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *myURL = [NSURL URLWithString: [self.url stringByAddingPercentEscapesUsingEncoding:
                                          NSUTF8StringEncoding]];
    NSURLRequest *request = [NSURLRequest requestWithURL:myURL];
    [self.webView loadRequest:request];
    
}

#pragma mark - Managing the detail item

- (void)setDetailItem:(Event *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}


@end
