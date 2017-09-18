//
//  DelegateView.h
//  Delegatespecific
//
//  Created by GLB-312-PC on 18/09/17.
//  Copyright © 2017 GLB-312-PC. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DelegateView;
@protocol DelegateviewDelegate <NSObject>

- (void)chagetheoriginaltext:(NSString *) fromoldstring;

@end
@interface DelegateView : UIView
@property(weak,nonatomic) id<DelegateviewDelegate>delegate;
@property(weak,nonatomic) NSString *mystring;

@end
