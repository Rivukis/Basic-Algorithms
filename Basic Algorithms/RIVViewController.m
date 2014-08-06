//
//  RIVViewController.m
//  Basic Algorithms
//
//  Created by Brian Radebaugh on 7/27/14.
//  Copyright (c) 2014 CleverKnot. All rights reserved.
//

#import "RIVViewController.h"
#import "RIVHanoiTower.h"
#import "RIVStack.h"
#import "RIVQueue.h"

@interface RIVViewController ()

@property (strong, nonatomic) RIVQueue *queue;
@property (strong, nonatomic) RIVStack *stack;

@end

@implementation RIVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    RIVHanoiTower *tower = [[RIVHanoiTower alloc] init];
    
    
//    self.queue = [[RIVQueue alloc] init];
//    [self.queue enqueue:@"first"];
//    [self.queue enqueue:@"second"];
//    [self.queue enqueue:@"third"];
//    NSLog(@"pop: %@,", self.queue.dequeue);
//    [self.queue enqueue:@"fourth"];
//    NSLog(@"queue: %@", self.queue.description);
    
    
    
//    self.stack = [[RIVStack alloc] init];
//    [self.stack push:@"first"];
//    [self.stack push:@"second"];
//    [self.stack push:@"third"];
//    NSLog(@"pop: %@,", self.stack.pop);
//    [self.stack push:@"fourth"];
//    NSLog(@"stack: %@", self.stack.description);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
