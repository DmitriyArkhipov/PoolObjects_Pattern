//
//  ExampleObject.h
//  pool_object_pattern
//
//  Created by Dmitriy Arkhipov on 24.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExampleObject : NSObject

@property (assign, atomic) int ID;

- (instancetype) initWithId:(int)o_id;

- (void) doSomethimg;
- (void) clear;

@end
