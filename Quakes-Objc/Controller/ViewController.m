//
//  ViewController.m
//  Quakes-Objc
//
//  Created by Paul Solt on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "LSILog.h"
#import "CARFirstResponder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Hey Quakes!");
    CARFirstResponder *responder = [[CARFirstResponder alloc] init];
    NSLog(@"responder: %@", responder);
    NSLog(@"name: %@", responder.name);
    responder.name = @"John";
    NSLog(@"name: %@", responder.name);
}


@end
