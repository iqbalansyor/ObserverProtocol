//
//  Observable.h
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 25/10/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Observable<T> : NSObject
@property (strong, nonatomic) id value;
typedef void(^ObserverBlock)(T, T);

-(void)subscribe:(id)observer block:(void(^)(T, T))block;
-(void)unsubscribe:(id)observer;
@end

