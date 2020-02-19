//
//  CARQuake.m
//  Quakes-Objc
//
//  Created by Chad Rutherford on 2/19/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

#import "CARQuake.h"

@implementation CARQuake

- (instancetype) initWithMagnitude:(double)magnitude
                             place:(NSString *)place
                              time:(NSDate *)time
                             alert:(NSString *)alert
                              type:(NSString *)type
                          latitude:(double)latitude
                         longitude:(double)longitude {
    self = [super init];
    if (self) {
        _magnitude = magnitude;
        _place = [place copy];
        _time = time;
        _alert = [alert copy];
        _type = [type copy];
        _latitude = latitude;
        _longitude = longitude;
    }
    return self;
}

@end
