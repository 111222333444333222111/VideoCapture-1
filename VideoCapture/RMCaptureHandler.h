//
//  CaptureHandler.h
//  VideoCapture
//
//  Created by Максимов Руслан on 15.10.15.
//  Copyright © 2015 maksimov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface RMCaptureHandler : NSObject

-(void)startCaptureInView: (UIViewController*) viewController;
-(void)stopCapture:(id) sender;


@end
