//
//  ViewController.m
//  localNotification
//
//  Created by Vidyashri on 11/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import "ViewController.h"
#import <UserNotifications/UserNotifications.h>  

@interface ViewController ()

@end

bool isnotificationAccess;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    isnotificationAccess = false;
    // Do any additional setup after loading the view, typically from a nib.
    
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    UNAuthorizationOptions options = UNAuthorizationOptionAlert +UNAuthorizationOptionSound;
    [center requestAuthorizationWithOptions:options completionHandler:^(BOOL granted, NSError * _Nullable error) {
        
        isnotificationAccess = granted;
        
    }];
}

- (IBAction)showNotification:(id)sender {
    if (isnotificationAccess) {
        UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
        UNMutableNotificationContent *content = [[UNMutableNotificationContent alloc] init];
        
        content.title = @"Notification Title";
        
        content.subtitle = @"Notification Subtitle";
        
        content.body = @"This is Obj-C Local Notification";
        
        content.sound = [UNNotificationSound defaultSound];
        
        UNTimeIntervalNotificationTrigger *trigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:10      repeats:NO];
        
        UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:@"UYLLocalNotification" content:content      trigger:trigger];
        
        // add notification for current notification centre
        
        [center addNotificationRequest:request withCompletionHandler:nil];
    }
}

@end
