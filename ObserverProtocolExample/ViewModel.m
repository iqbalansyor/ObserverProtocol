//
//  ViewModel.m
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 25/10/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import "ViewModel.h"

@implementation ViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.labelStrings = [[Observable alloc] init];
    }
    return self;
}

- (void)buttonTapped {
    if ([self.labelStrings.value isEqualToString:@"tapped"]) {
        self.labelStrings.value = @"label";
    }
    else {
    	self.labelStrings.value = @"tapped";
    }
}

@end
