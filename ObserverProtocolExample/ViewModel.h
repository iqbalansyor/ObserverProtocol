//
//  ViewModel.h
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 25/10/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observable.h"

@interface ViewModel : NSObject

@property (strong, nonatomic) Observable<NSString *> *labelStrings;
- (void)buttonTapped;

@end
