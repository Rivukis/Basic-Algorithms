//
//  RIVStack.m
//  Basic Algorithms
//
//  Created by Brian Radebaugh on 7/27/14.
//  Copyright (c) 2014 CleverKnot. All rights reserved.
//

#import "RIVStack.h"

@interface RIVStack ()

@property (strong, nonatomic) RIVNode *top;
@property (assign, nonatomic) NSInteger size;

@end

@implementation RIVStack

- (void)push:(id)object
{
    RIVNode *newNode = [[RIVNode alloc] initWithObject:object];
    newNode.nextNode = self.top;
    self.top = newNode;
    self.size++;
}

- (id)pop
{
    id object = self.top.object;
    self.top = self.top.nextNode;
    self.size--;
    return object;
}

- (id)peek
{
    return self.top.object;
}

- (BOOL)isEmpty
{
    return (self.top) ? NO : YES;
}

- (NSString *)description
{
    RIVNode *node = self.top;
    NSString *description = [node.object description];
    
    while (node.nextNode) {
        node = node.nextNode;
        description = [NSString stringWithFormat:@"%@, %@", [node.object description], description];
    }
    return description;
}

@end