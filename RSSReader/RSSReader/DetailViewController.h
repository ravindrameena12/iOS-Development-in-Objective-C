//
//  DetailViewController.h
//  RSSReader
//
//  Created by Vidyashri on 08/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RSSReader+CoreDataModel.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Event *detailItem;

@property (copy, nonatomic) NSString *url;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end

