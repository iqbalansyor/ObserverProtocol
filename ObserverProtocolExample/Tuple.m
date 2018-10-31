//
//  Tuple.m
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 31/10/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import "Tuple.h"

@implementation Tuple

+ (instancetype)tupleWithFirst:(id)first second:(id)second {
    return [[self alloc] initWithFirst:first second:second];
}

- (instancetype)initWithFirst:(id)first second:(id)second {
    self = [super init];
    if (self) {
        _first = first;
        _second = second;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

@end
