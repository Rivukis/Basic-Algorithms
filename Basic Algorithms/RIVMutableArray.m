//
//  RIVMutableArray.m
//  Basic Algorithms
//
//  Created by Brian Radebaugh on 7/28/14.
//  Copyright (c) 2014 CleverKnot. All rights reserved.
//

#import "RIVMutableArray.h"
#import "RIVNode.h"

@interface RIVMutableArray ()

@property (strong, nonatomic) RIVNode *firstNode;
@property (assign, nonatomic) NSInteger count;

@end

@implementation RIVMutableArray

- (void)addObject:(id)object
{
    RIVNode *newNode = [[RIVNode alloc] initWithObject:object];
    if (!self.firstNode) {
        self.firstNode = newNode;
    } else {
        RIVNode *lastNode = [self nodeForIndex:self.count - 1];
        lastNode.nextNode = newNode;
    }
    self.count++;
}

- (void)insertObject:(id)object AtIndex:(NSInteger)index
{
    if (index == self.count) [self addObject:object];
    
    RIVNode *indexedNode = [self nodeForIndex:index];
    if (indexedNode) {
        RIVNode *replacementNode = [[RIVNode alloc] initWithObject:indexedNode.object];
        replacementNode.nextNode = indexedNode.nextNode;
        indexedNode.object = object;
        indexedNode.nextNode = replacementNode;
    }
    
}

- (void)setObject:(id)object forIndex:(NSInteger)index
{
    if (index == self.count) [self addObject:object];
    
    RIVNode *node = [self nodeForIndex:index];
    node.object = object;
}

- (void)removeObjectAtIndex:(NSInteger)index
{
    RIVNode *node = [self nodeForIndex:index];
    if (node) {
        if (index == self.count - 1) {
            [self removeLastObject];
        } else {
            node.object = node.nextNode.object;
            node.nextNode = node.nextNode.nextNode;
        }
        self.count--;
    }
}

- (void)removeLastObject
{
    if (self.count == 1) {
        self.firstNode = nil;
    } else {
        RIVNode *node = [self nodeForIndex:self.count - 2];
        node.nextNode = nil;
    }
}

- (id)objectAtIndex:(NSInteger)index
{
    RIVNode *node = [self nodeForIndex:index];
    return node.object;
}

- (NSInteger)indexForObject:(id)object
{
    RIVNode *node = self.firstNode;
    NSInteger index = 0;
    while (![node.object isEqual:object]) {
        node = node.nextNode;
        index++;
        if (index == self.count) return NSNotFound;
    }
    
    return index;
}

- (RIVNode *)nodeForIndex:(NSInteger)index
{
    if (index < 0 || index >= self.count) return nil;
    
    RIVNode *node = self.firstNode;
    for (NSInteger i = 0; i < index; i++) node = node.nextNode;
    
    return node;
}

- (id)lastObject
{
    if (self.count) {
        return [self objectAtIndex:0];
    } else {
        return nil;
    }
}

- (id)firstObject
{
    if (self.count) {
        return [self objectAtIndex:self.count - 1];
    } else {
        return nil;
    }
}

@end
