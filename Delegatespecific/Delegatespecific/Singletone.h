//
//  Singletone.h
//  Delegatespecific
//
//  Created by GLB-312-PC on 18/09/17.
//  Copyright © 2017 GLB-312-PC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Singletone;
@protocol singletonedelegate <NSObject>
@required
- (NSString *)chagetext:(NSString *)text;


@end
@interface Singletone : NSObject

@property(weak,nonatomic) id<singletonedelegate>delegate;
+ (Singletone *) sharedSingleton;

@end
