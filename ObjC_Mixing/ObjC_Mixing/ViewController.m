//
//  ViewController.m
//  ObjC_Mixing
//
//  Created by Vidyashri on 02/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import "ViewController.h"
#import "ObjC_Mixing-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    File *file = [[File alloc]initWithName: @"Ravindra" designation: @"A5"];
    [file myMethod];
    NSLog(@"Name: %@, designation: %@",[file name],[file designation]);
    // Do any additional setup after loading the view, typically from a nib.
}


@end
