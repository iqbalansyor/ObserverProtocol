//
//  Observable.m
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 25/10/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import "Observable.h"
#import "DoubleTuple.h"

@interface Observable ()
@property (nonatomic, strong) NSMutableArray<DoubleTuple *> *observerEntries;
@end

@implementation Observable

- (instancetype)init
{
    self = [super init];
    if (self) {
        _observerEntries = [NSMutableArray new];
    }
    return self;
}

- (void)setValue:(id)value {
    id oldValue = _value;
    _value = value;
    
    BOOL validObseverEntries = self.observerEntries.count > 0;
    if (!validObseverEntries) {
        return;
    }
    
    for (DoubleTuple *observerEntry in self.observerEntries) {
        ObserverBlock block = (ObserverBlock)observerEntry.second;
        block(oldValue, value);
    }
}

- (void)subscribe:(id)observer block:(void (^)(id, id))block {
    DoubleTuple *observerEntry = [DoubleTuple tupleWithFirst:observer second:block];
    [_observerEntries addObject:observerEntry];
}

- (void)unsubscribe:(id)observer {
    NSMutableArray<DoubleTuple *> *filteredObserverEntries = [NSMutableArray new];
    for (DoubleTuple *observerEntry in self.observerEntries) {
        BOOL shouldAddObserverEntry = observerEntry.first != observer;
        if (shouldAddObserverEntry) {
            [filteredObserverEntries addObject:observerEntry];
        }
    }
    
    self.observerEntries = filteredObserverEntries;
}

@end
