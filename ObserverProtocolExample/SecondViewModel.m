//
//  SecondViewModel.m
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 03/12/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import "SecondViewModel.h"
#import "TVLObservable.h"

@implementation SecondViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.labelString = [TVLObservable new];
    }
    return self;
}

- (void)tapSecondButton {
    if ([self.labelString.value  isEqual: @"tapped"]) {
    	self.labelString.value = @"normal";
    }
    else {
        self.labelString.value = @"tapped";
    }
}

@end
