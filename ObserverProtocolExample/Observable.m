//
//  Observable.m
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 25/10/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import "Observable.h"

@interface Observable ()
//@property (strong, nonatomic) NSMutableArray<id>* observers;
@end

@implementation Observable

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.observerBlocks = [NSMutableArray new];
        self.observers = [NSMutableArray new];
    }
    return self;
}

- (void)setValue:(id)value {
    id oldValue = _value;
    _value = value;
    for (ObserverBlock block in _observerBlocks) {
        block(oldValue, value);
    }
}

- (void)subscribe:(id)observer block:(void (^)(id, id))block {
    [self.observers addObject:observer];
    [self.observerBlocks addObject:block];
}

//- (void)unsubscribe:(id)observer {
//    NSMutableArray<ObserverBlock>* filtered
//}

@end
