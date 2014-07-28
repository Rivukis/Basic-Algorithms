//
//  RIVMutableArray.h
//  Basic Algorithms
//
//  Created by Brian Radebaugh on 7/28/14.
//  Copyright (c) 2014 CleverKnot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RIVMutableArray : NSObject

@property (readonly, nonatomic) NSInteger count;
@property (readonly, nonatomic) id firstObject;
@property (readonly, nonatomic) id lastObject;

- (void)addObject:(id)obj;
- (void)insertObject:(id)object AtIndex:(NSInteger)index;
- (void)setObject:(id)object forIndex:(NSInteger)index;
- (void)removeObjectAtIndex:(NSInteger)index;
- (void)removeLastObject;

- (id)objectAtIndex:(NSInteger)index;
- (NSInteger)indexForObject:(id)object;

@end
