//
//  RIVStack.h
//  Basic Algorithms
//
//  Created by Brian Radebaugh on 7/27/14.
//  Copyright (c) 2014 CleverKnot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RIVNode.h"

@interface RIVStack : NSObject

@property (readonly, nonatomic) NSInteger size;

- (void)push:(id)object;
- (id)pop;
- (id)peek;
- (BOOL)isEmpty;

@end