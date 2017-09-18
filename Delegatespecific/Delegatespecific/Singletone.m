//
//  Singletone.m
//  Delegatespecific
//
//  Created by GLB-312-PC on 18/09/17.
//  Copyright © 2017 GLB-312-PC. All rights reserved.
//

#import "Singletone.h"
Singletone *sharedSingleton;
@implementation Singletone
+ (Singletone *) sharedSingleton {
    @synchronized(self) {
        if (!sharedSingleton) {
            sharedSingleton = [[Singletone alloc]init];
        }
    }
    return sharedSingleton;
}

@end
