//
//  CARQuake.h
//  Quakes-Objc
//
//  Created by Chad Rutherford on 2/19/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CARQuake : NSObject

// magnitude
// place
// time
// alert (r, g, y, null)
// type
// coordinates

@property (nonatomic, readonly) double magnitude;
@property (nonatomic, readonly, copy) NSString *place;
@property (nonatomic, readonly) NSDate *time;
@property (nonatomic, readonly, copy) NSString *alert;
@property (nonatomic, readonly, copy) NSString *type;
@property (nonatomic, readonly) double latitude;
@property (nonatomic, readonly) double longitude;

- (instancetype) initWithMagnitude:(double)magnitude
                             place:(NSString *)place
                              time:(NSDate *)time
                             alert:(NSString *)alert
                              type:(NSString *)type
                          latitude:(double)latitude
                         longitude:(double)longitude;

- (instancetype) initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
