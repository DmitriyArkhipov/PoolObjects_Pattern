//
//  ExampleObject.m
//  pool_object_pattern
//
//  Created by Dmitriy Arkhipov on 24.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ExampleObject.h"

@implementation ExampleObject

- (instancetype) initWithId:(int)o_id {
    self = [super init];
    if (self) {
        _ID = o_id;
        NSLog(@"new pool object");
    }
    return self;
}

- (void) doSomethimg {

    NSLog(@"do something for me");
}


- (void) clear {
    
    _ID = 0;

    NSLog(@"clear pool object");

}

@end
