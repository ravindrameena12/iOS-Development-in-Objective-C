//
//  AppDelegate.h
//  CollectionView
//
//  Created by Vidyashri on 07/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

