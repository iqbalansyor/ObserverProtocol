//
//  Observable.m
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 25/10/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import "TVLObservable.h"
#import "TVLDoubleTuple.h"

@interface TVLObservable ()
@property (nonatomic, strong) NSMutableArray<TVLDoubleTuple<NSString *, ObserverBlock> *> *observerEntries;
@end

@implementation TVLObservable

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
    
    for (TVLDoubleTuple<id, ObserverBlock> *observerEntry in self.observerEntries) {
        observerEntry.second(oldValue, value);
    }
}

- (void)subscribe:(id)observer block:(void (^)(id, id))block {
    NSString *observerString = [observer description];
    TVLDoubleTuple *observerEntry = [TVLDoubleTuple tupleWithFirst:observerString second:block];
    [_observerEntries addObject:observerEntry];
}

- (void)unsubscribe:(id)observer {
    NSMutableArray<TVLDoubleTuple<NSString *, ObserverBlock> *> *filteredObserverEntries = [NSMutableArray new];
    for (TVLDoubleTuple *observerEntry in self.observerEntries) {
        BOOL shouldAddObserverEntry = observerEntry.first != observer;
        if (shouldAddObserverEntry) {
            [filteredObserverEntries addObject:observerEntry];
        }
    }
    
    self.observerEntries = filteredObserverEntries;
}

@end
