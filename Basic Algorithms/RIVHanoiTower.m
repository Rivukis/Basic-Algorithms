//
//  RIVHanoiTower.m
//  Basic Algorithms
//
//  Created by Brian Radebaugh on 7/28/14.
//  Copyright (c) 2014 CleverKnot. All rights reserved.
//

#import "RIVHanoiTower.h"

@interface RIVHanoiTower ()

@property (strong, nonatomic) NSMutableArray *pole1;
@property (strong, nonatomic) NSMutableArray *pole2;
@property (strong, nonatomic) NSMutableArray *pole3;

@property (assign, nonatomic) NSInteger moveCounter;

@end

@implementation RIVHanoiTower

- (id)init
{
    self = [super init];
    if (self) {
        self.pole1 = [[NSMutableArray alloc] initWithArray:@[@8, @7, @6, @5, @4, @3, @2, @1]];
        self.pole2 = [NSMutableArray new];
        self.pole3 = [NSMutableArray new];
        self.moveCounter = 0;
        
        NSLog(@"%@ #A: %@, #B: %@, #C: %@", @[@(self.moveCounter)].description, self.pole1.description, self.pole2.description, self.pole3.description);
        [self solveTowerNoNode];
    }
    return self;
}

- (void)solveTowerNoNode
{
    if (self.pole1.count) [self solveTowerWithFromPole:self.pole1 withPole:self.pole2 toPole:self.pole3 andLargestDisc:self.pole1.firstObject];
}

- (void)solveTowerWithFromPole:(NSMutableArray *)fromPole withPole:(NSMutableArray *)withPole toPole:(NSMutableArray *)toPole andLargestDisc:(NSNumber *)largestDisc
{
    // Tear Down
    if (![largestDisc isEqual:fromPole.lastObject]) {
        NSInteger nextLargestDiscIndex = [fromPole indexOfObject:largestDisc] + 1;
        [self solveTowerWithFromPole:fromPole
                            withPole:toPole
                              toPole:withPole
                      andLargestDisc:fromPole[nextLargestDiscIndex]];
    }
    
    // Move Disc
    [toPole addObject:largestDisc];
    [fromPole removeObject:largestDisc];
    
    // Watch Through Debug Window
    self.moveCounter++;
    NSLog(@"%@ #A: %@, #B: %@, #C: %@", @[@(self.moveCounter)].description, self.pole1.description, self.pole2.description, self.pole3.description);
    
    
    // Reconstruct
    if (largestDisc.integerValue != 1) {
        [self solveTowerWithFromPole:withPole
                            withPole:fromPole
                              toPole:toPole
                      andLargestDisc:@(largestDisc.integerValue - 1)];
    }
}

@end







