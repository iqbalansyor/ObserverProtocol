//
//  DoubleTuple.h
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 31/10/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TVLDoubleTuple<A, B> : NSObject <NSCopying>

/**
 First object of this instance.
 */
@property (nonatomic, readonly, nullable) A first;

/**
 Second object of this instance.
 */
@property (nonatomic, readonly, nullable) B second;

/**
 Create tuple object with passed first and second object.

 @param first first object
 @param second second object
 @return this instance
 */
+ (instancetype)tupleWithFirst:(A)first second:(B)second;
@end
