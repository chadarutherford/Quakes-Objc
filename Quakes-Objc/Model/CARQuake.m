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

- (instancetype) initWithDictionary:(NSDictionary *)dictionary {
    NSDictionary *properties = dictionary[@"properties"];
    NSDictionary *geometry = dictionary[@"geometry"];
    
    NSNumber *magnitudeNumber = properties[@"mag"];
    NSString *place = properties[@"place"];
    NSNumber *timeNumber = properties[@"time"];
    NSDate *time = [NSDate dateWithTimeIntervalSince1970:timeNumber.longValue / 1000.0];
    NSString *alert = properties[@"alert"];
    if ([alert isKindOfClass:[NSNull class]]) {
        alert = nil;
    }
    
    if (!(magnitudeNumber || place || timeNumber)) {
        return nil;
    }
    
    self = [self initWithMagnitude:magnitudeNumber.doubleValue place:place time:time alert:alert type:nil latitude:0 longitude:0];
    return self;
}

@end
