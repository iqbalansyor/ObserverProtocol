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
@property (nonatomic, strong) NSMutableDictionary<NSString *, ObserverBlock> *observerEntries;
@end

@implementation TVLObservable

- (instancetype)init
{
    self = [super init];
    if (self) {
        _observerEntries = [NSMutableDictionary new];
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
    
    for (NSString *key in self.observerEntries) {
        ObserverBlock block = self.observerEntries[key];
        block(oldValue, value);
    }
}

- (void)subscribe:(id)observer block:(void (^)(id, id))block {
    [self.observerEntries setValue:block forKey:[observer description]];
}

- (void)unsubscribe:(id)observer {
    [self.observerEntries removeObjectForKey:[observer description]];
}

@end
