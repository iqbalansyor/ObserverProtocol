//
//  Observable.h
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 25/10/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Observable<id> : NSObject
@property (strong, nonatomic) id value;
typedef void(^ObserverBlock)(id, id);
@property (strong, nonatomic) NSMutableArray<ObserverBlock>* observerBlocks;
@property (strong, nonatomic) NSMutableArray<id> *observers;

-(void)subscribe:(id)observer block:(void(^)(id, id))block;
//-(void)unsubscribe:(id)observer;
@end

