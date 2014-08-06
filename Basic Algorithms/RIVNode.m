//
//  RIVNode.m
//  Basic Algorithms
//
//  Created by Brian Radebaugh on 7/27/14.
//  Copyright (c) 2014 CleverKnot. All rights reserved.
//

#import "RIVNode.h"

@implementation RIVNode

- (instancetype)initWithObject:(id)object
{
    self = [super init];
    if (self) {
        self.object = object;
    }
    return self;
}

- (instancetype)initWithObject:(id)object andKey:(NSString *)key
{
    self = [super init];
    if (self) {
        self.object = object;
        self.key = key;
    }
    return self;
}

@end