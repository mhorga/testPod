//
//  NSArray+Randomize.m
//  randomizeCategoryOnNSArray
//
//  Created by Marius Horga on 1/8/15.
//  Copyright (c) 2015 Marius Horga. All rights reserved.
//

#import "NSArray+Randomize.h"

@implementation NSArray (Randomize)

- (NSArray *)randomizeArray {
    NSMutableArray *randomizedArray = [NSMutableArray self];
    NSUInteger count = [self count];
    for (NSUInteger i = 0; i < count; ++i) {
        NSInteger remainingCount = count - i;
        NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t )remainingCount);
        [randomizedArray exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
    
    return randomizedArray;
}

@end
