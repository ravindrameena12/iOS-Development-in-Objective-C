//
//  Recipe.h
//  TableViewProject
//
//  Created by Vidyashri on 07/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Recipe : NSObject

@property (nonatomic, strong) NSString *name; // name of recipe
@property (nonatomic, strong) NSString *prepTime; // preparation time
@property (nonatomic, strong) NSArray *ingredients; // ingredients

@end

NS_ASSUME_NONNULL_END
