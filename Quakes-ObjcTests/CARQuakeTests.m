//
//  CARQuakeTests.m
//  Quakes-ObjcTests
//
//  Created by Chad Rutherford on 2/19/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LSIFileHelper.h"
#import "LSILog.h"
#import "CARQuake.h"

@interface CARQuakeTests : XCTestCase

@end

@implementation CARQuakeTests

- (void)testQuakeParsing {
    NSData *quakeData = loadFile(@"Quake.json", [CARQuakeTests class]);
    NSError *jsonError = nil;
    NSDictionary *quakeDictionary = [NSJSONSerialization JSONObjectWithData:quakeData options:0 error:&jsonError];
    if (jsonError) {
        NSLog(@"JSON Parsing Error: %@", jsonError);
    }
    NSDate *time = [NSDate dateWithTimeIntervalSince1970:1388620296020 / 1000.0];
    CARQuake *quake = [[CARQuake alloc] initWithDictionary:quakeDictionary];
    XCTAssertEqualWithAccuracy(1.29, quake.magnitude, 0.001);
    XCTAssertEqualObjects(@"10km SSW of Idyllwild, CA", quake.place);
    XCTAssertEqualObjects(time, quake.time);
    XCTAssertNil(quake.alert);
}

@end
