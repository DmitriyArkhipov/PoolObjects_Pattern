//
//  PoolRecord.m
//  pool_object_pattern
//
//  Created by Dmitriy Arkhipov on 24.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "PoolRecord.h"

@implementation PoolRecord

- (instancetype) init {
    self = [super init];
    if (self) {
        _isUse = YES;
    }
    return self;

}

@end
