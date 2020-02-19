//
//  CARFirstResponder.m
//  Quakes-Objc
//
//  Created by Chad Rutherford on 2/19/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

#import "CARFirstResponder.h"

@interface CARFirstResponder () {
    // Private instance variables
//    NSString *_name;
}

// Private properties

// Private methods

@end

@implementation CARFirstResponder

@synthesize name = _name;

- (void) setName:(NSString *)name {
    _name = [name copy];
}

- (NSString *)name {
    return _name;
}

@end
