//
//  DoubleTuple.h
//  ObserverProtocolExample
//
//  Created by Iqbal.ansyori on 31/10/18.
//  Copyright © 2018 Iqbal.ansyori. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DoubleTuple : NSObject <NSCopying>
@property (nonatomic, readonly, nullable) id first;
@property (nonatomic, readonly, nullable) id second;

+ (instancetype)tupleWithFirst:(id)first second:(id)second;
@end
