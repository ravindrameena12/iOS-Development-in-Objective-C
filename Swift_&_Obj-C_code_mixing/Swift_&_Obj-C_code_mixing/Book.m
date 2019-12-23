//
//  Book.m
//  Swift_&_Obj-C_code_mixing
//
//  Created by Vidyashri on 02/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import "Book.h"

@implementation Book

-(id)initWihName:(NSString *)name andGrade:(NSString *)grade {
    self = [super init];
    if ( self ) {
        self.fName = name;
        self.grade = grade;
    }
    return self;
}

- (void) someMethod {
    NSLog(@"Hello from Objective-C!!");
}

@end
