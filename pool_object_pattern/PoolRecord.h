//
//  PoolRecord.h
//  pool_object_pattern
//
//  Created by Dmitriy Arkhipov on 24.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExampleObject.h"

@interface PoolRecord : NSObject

@property (strong, atomic) ExampleObject *instance;

@property (assign, atomic) BOOL isUse;

@end
