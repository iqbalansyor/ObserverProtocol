//
//  ViewModel.h
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 25/10/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TVLObservable.h"

@interface ViewModel : NSObject

@property (strong, nonatomic) TVLObservable<NSString *> *labelStrings;
- (void)tapNormalButton;
- (void)tapTappedButton;

@end
