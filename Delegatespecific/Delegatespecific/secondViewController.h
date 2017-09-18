//
//  secondViewController.h
//  Delegatespecific
//
//  Created by GLB-312-PC on 18/09/17.
//  Copyright © 2017 GLB-312-PC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DelegateView.h"
@interface secondViewController : UIViewController
@property(nonatomic,strong)DelegateView *delegateview;
@property(nonatomic,strong) NSString *mystring;
@end
