//
//  RIVQueue.h
//  Basic Algorithms
//
//  Created by Brian Radebaugh on 7/27/14.
//  Copyright (c) 2014 CleverKnot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RIVQueue : NSObject

@property (readonly, nonatomic) NSInteger size;

- (void)enqueue:(id)object;
- (id)dequeue;
- (BOOL)isEmpty;

@end