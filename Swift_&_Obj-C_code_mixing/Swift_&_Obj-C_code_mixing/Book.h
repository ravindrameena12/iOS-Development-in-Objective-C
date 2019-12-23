//
//  Book.h
//  Swift_&_Obj-C_code_mixing
//
//  Created by Vidyashri on 02/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject

@property (strong, nonatomic) NSString *fName;
@property (strong, nonatomic) NSString *grade;

-(id)initWihName: (NSString *)name andGrade: (NSString*)grade;

- (void) someMethod;

@end

NS_ASSUME_NONNULL_END
