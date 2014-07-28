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

@property (strong, nonatomic) RIVNode *front;
@property (assign, nonatomic) NSInteger size;

@end

@implementation RIVQueue

- (void)enqueue:(id)object
{
    RIVNode *newNode = [[RIVNode alloc] initWithObject:object];
    
    if (self.isEmpty) {
        self.front = newNode;
    } else {
        RIVNode *rear = self.front;
        while (rear.nextNode) rear = rear.nextNode;
        rear.nextNode = newNode;
    }
    self.size++;
}

- (id)dequeue
{
    id object = self.front.object;
    self.front = self.front.nextNode;
    self.size--;
    return object;
}

- (BOOL)isEmpty
{
    return (self.front) ? NO : YES;
}

@end