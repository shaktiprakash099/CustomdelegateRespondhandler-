//
//  DelegateView.m
//  Delegatespecific
//
//  Created by GLB-312-PC on 18/09/17.
//  Copyright © 2017 GLB-312-PC. All rights reserved.
//

#import "DelegateView.h"

@implementation DelegateView

- (id)initWithFrame:(CGRect)frame{
      if (self == [super initWithFrame:frame]) {
          self.backgroundColor = [UIColor blackColor];
          UIButton *ChangetextButton = [[UIButton alloc]initWithFrame:CGRectMake(20, 50,500,50)];
          [ChangetextButton setTitle:@"Changetext" forState:UIControlStateNormal];
         [ChangetextButton addTarget:self action:@selector(addProfileAction:) forControlEvents:UIControlEventTouchUpInside];
          [self addSubview:ChangetextButton];
     }
         return self;

}

- (void)addProfileAction:(UIButton *)sender{
    if(_delegate && [_delegate respondsToSelector:@selector(chagetheoriginaltext:)]) {
    [_delegate chagetheoriginaltext:_mystring];
    }

    
    
}
@end
