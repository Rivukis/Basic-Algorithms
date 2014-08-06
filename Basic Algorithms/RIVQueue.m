//
//  RIVQueue.m
//  Basic Algorithms
//
//  Created by Brian Radebaugh on 7/27/14.
//  Copyright (c) 2014 CleverKnot. All rights reserved.
//

#import "RIVQueue.h"
#import "RIVNode.h"

@interface RIVQueue ()

@property (strong, nonatomic) RIVNode *front; // Head
@property (strong, nonatomic) RIVNode *rear; // Tail
@property (assign, nonatomic) NSInteger size;

@end

@implementation RIVQueue

- (void)enqueue:(id)object
{
    RIVNode *newNode = [[RIVNode alloc] initWithObject:object];
    
    if (self.isEmpty) {
        self.front = newNode;
    } else {
        self.rear.nextNode = newNode;
    }
    
    self.rear = newNode;
    self.size++;
}

- (id)dequeue
{
    id object = self.front.object;
    self.front = self.front.nextNode;
    if (self.isEmpty) self.rear = nil;
    self.size--;
    return object;
}

- (BOOL)isEmpty
{
    return (self.front) ? NO : YES;
}

- (NSString *)description
{
    RIVNode *node = self.front;
    NSString *description = [node.object description];
    
    while (node.nextNode) {
        node = node.nextNode;
        description = [NSString stringWithFormat:@"%@, %@", description, [node.object description]];
    }
    return description;
}

@end