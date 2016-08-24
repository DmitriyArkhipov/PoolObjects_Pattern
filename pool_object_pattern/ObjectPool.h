//
//  ObjectPool.h
//  pool_object_pattern
//
//  Created by Dmitriy Arkhipov on 24.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PoolRecord.h"

@interface ObjectPool : NSObject

@property NSMutableArray *pool;

+ (instancetype) sharedInstance;

- (ExampleObject *)acquire;
- (void) releaseObject:(ExampleObject *)obj;

@end
