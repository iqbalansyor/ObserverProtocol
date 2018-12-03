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
        self.labelStrings = [[TVLObservable alloc] init];
    }
    return self;
}

- (void)tapNormalButton {
    self.labelStrings.value = @"normal";
}

- (void)tapTappedButton {
    self.labelStrings.value = @"tapped";
}

@end
