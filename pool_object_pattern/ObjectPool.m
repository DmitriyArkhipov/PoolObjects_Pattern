//
//  ObjectPool.m
//  pool_object_pattern
//
//  Created by Dmitriy Arkhipov on 24.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ObjectPool.h"


@implementation ObjectPool

+ (instancetype) sharedInstance {
    
    static ObjectPool *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ObjectPool alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
    
}

- (instancetype)init
{
    if (self = [super init]) {
        // Do any other initialisation stuff here
        _pool = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (ExampleObject *)acquire {
    
    for (int i = 0; i < [_pool count]; i++) {
        if ([_pool[i] isKindOfClass:[PoolRecord class]]) {
            PoolRecord *poolRecord = _pool[i];
            
            if (!poolRecord.isUse) {
                poolRecord.isUse = YES;
                return poolRecord.instance;
            }
        }
    }
    
    PoolRecord *record = [[PoolRecord alloc] init];
    record.instance = [[ExampleObject alloc] initWithId:10];
    record.isUse = YES;
    
    [_pool addObject:record];
    

    return record.instance;
}
- (void) releaseObject:(ExampleObject *)obj {
    
    for (int i = 0; i < [_pool count]; i++) {
        if ([_pool[i] isKindOfClass:[PoolRecord class]]) {
            
            PoolRecord *poolRecord = _pool[i];
            
            if ([poolRecord.instance isKindOfClass:[ExampleObject class]]) {
                
                ExampleObject *poolRecordObj = poolRecord.instance;
                
                if (poolRecordObj == obj) {
                    
                    poolRecord.isUse = NO;
                    [poolRecordObj clear];
                    
                }
            }
        }
    }


}

@end
