//
//  secondViewController.m
//  Delegatespecific
//
//  Created by GLB-312-PC on 18/09/17.
//  Copyright © 2017 GLB-312-PC. All rights reserved.
//

#import "secondViewController.h"
#import "ViewController.h"
#import "DelegateView.h"
@interface secondViewController ()<DelegateviewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation secondViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    _delegateview = [[DelegateView alloc]init];
    _delegateview.delegate = self;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
    
}
- (IBAction)changetextAction:(id)sender {
    
    _textField.text=  [ViewController chagetextotal:_textField.text];
    
   }

- (void)chagetheoriginaltext:(NSString *) fromoldstring{
    
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [fromoldstring length];
    while (charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[fromoldstring substringWithRange:subStrRange]];
    }
    NSLog(@"%@", reversedString);

    _textField.text = reversedString;
    [_delegateview removeFromSuperview];
}

- (IBAction)delegateaction:(id)sender {
    
       _delegateview = [[DelegateView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        _delegateview.mystring = _textField.text;
        _delegateview.delegate = self;
    
        [self.view addSubview:_delegateview];
    

    
}




@end
