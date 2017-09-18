//
//  ViewController.h
//  Delegatespecific
//
//  Created by GLB-312-PC on 18/09/17.
//  Copyright © 2017 GLB-312-PC. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;
@protocol ViewControllerDelegate <NSObject>

- (NSString *)chagetextnew:(NSString *)text;


@end
@interface ViewController : UIViewController
@property(weak,nonatomic) id <ViewControllerDelegate>delegate;

+ (NSString *)chagetextotal:(NSString *)text;
@end

