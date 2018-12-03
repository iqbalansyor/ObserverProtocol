//
//  SecondViewModel.h
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 03/12/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Observable<T>;

@interface SecondViewModel : NSObject

@property (nonatomic, strong) Observable<NSString *> *labelString;

- (void)tapSecondButton;

@end
