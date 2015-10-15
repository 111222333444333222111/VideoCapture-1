//
//  RMErrorHandler.h
//  VideoCapture
//
//  Created by Максимов Руслан on 15.10.15.
//  Copyright © 2015 maksimov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface RMErrorHandler : NSObject

+(void)showAlertWithTitle:(NSString*) title andMessage:(NSString*) message inView: (UIViewController*) viewController;

@end
