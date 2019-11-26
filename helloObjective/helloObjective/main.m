//
//  main.m
//  helloObjective
//
//  Created by Vidyashri on 11/25/19.
//  Copyright © 2019 CG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SampleClass : NSObject
- (int) max: (int) num1 andNum2: (int) num1;
@end

@implementation SampleClass
- (int) max: (int) num1 andNum2: (int) num2 {
    return num1>=num2 ? num1 : num2;
}
@end

double (^multiply)(double, double) =
^(double num1, double num2) {
    return num1*num2;
};

int main() {
    SampleClass *sampleClass = [[SampleClass alloc]init];
    NSLog(@"Value: %d\n",[sampleClass max:10 andNum2:5]);
    NSLog(@"%f\n",multiply(5,10));
    return 0;
}
