//
//  TVLObservable.h
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 25/10/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TVLObservable<T> : NSObject

/**
 Value of this `Observable` instance
 Change this will trigger observer's block.
 */
@property (strong, nonatomic) T value;
typedef void(^ObserverBlock)(T, T);

/**
 Subscribe changes of the `value`.

 @param observer instance of the observer
 @param block will trigger the block when `value` changed.
 */
-(void)subscribe:(id)observer block:(void(^)(T, T))block;


/**
 Unsubscribe the `value` changes.

 @param observer instance of the observer.
 */
-(void)unsubscribe:(id)observer;
@end

