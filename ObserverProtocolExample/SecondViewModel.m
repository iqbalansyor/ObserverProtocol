//
//  SecondViewModel.m
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 03/12/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import "SecondViewModel.h"
#import "Observable.h"

@implementation SecondViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.labelString = [Observable new];
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
