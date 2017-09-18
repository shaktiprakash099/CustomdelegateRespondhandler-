//
//  ViewController.m
//  Delegatespecific
//
//  Created by GLB-312-PC on 18/09/17.
//  Copyright © 2017 GLB-312-PC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
}

+ (NSString *)chagetextotal:(NSString *)text{
    
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [text length];
    while (charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[text substringWithRange:subStrRange]];
    }
    NSLog(@"%@", reversedString);
    
    return reversedString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
