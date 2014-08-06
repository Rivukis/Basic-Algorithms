//
//  RIVNode.h
//  Basic Algorithms
//
//  Created by Brian Radebaugh on 7/27/14.
//  Copyright (c) 2014 CleverKnot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RIVNode : NSObject

@property (strong, nonatomic) id object;
@property (strong, nonatomic) NSString *key;
@property (strong, nonatomic) RIVNode *nextNode;

- (instancetype)initWithObject:(id)object;
- (instancetype)initWithObject:(id)object andKey:(NSString *)key;

@end