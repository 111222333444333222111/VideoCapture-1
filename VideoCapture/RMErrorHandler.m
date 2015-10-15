//
//  RMErrorHandler.m
//  VideoCapture
//
//  Created by Максимов Руслан on 15.10.15.
//  Copyright © 2015 maksimov. All rights reserved.
//

#import "RMErrorHandler.h"

@implementation RMErrorHandler

+(void)showAlertWithTitle:(NSString*) title andMessage:(NSString*) message inView: (UIViewController*) viewController{
    UIAlertController *alert = [UIAlertController
                                alertControllerWithTitle:title
                                message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    [alert addAction:defaultAction];
    [viewController presentViewController:alert animated:YES completion:nil];
}


@end
