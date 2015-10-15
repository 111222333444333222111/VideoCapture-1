//
//  CaptureHandler.m
//  VideoCapture
//
//  Created by Максимов Руслан on 15.10.15.
//  Copyright © 2015 maksimov. All rights reserved.
//

#import "RMCaptureHandler.h"
#import "RMErrorHandler.h"

@interface RMCaptureHandler()

@property (strong, nonatomic) AVCaptureSession *session;
@property (strong, nonatomic) UIView *videoView;

@end

@implementation RMCaptureHandler

-(void)startCaptureInView: (UIViewController*) viewController {
    self.session = [[AVCaptureSession alloc] init];
    self.session.sessionPreset = AVCaptureSessionPresetHigh;
    
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    
    NSError *error = nil;
    AVCaptureDeviceInput *input = [AVCaptureDeviceInput deviceInputWithDevice:device error:&error];
    if (error == nil) {
        [self.session addInput:input];
    }
    else {
        [RMErrorHandler showAlertWithTitle:[error localizedFailureReason] andMessage:[error localizedDescription]  inView:viewController];
        
    }
    
    AVCaptureVideoPreviewLayer *videoPreviewLayer = [[AVCaptureVideoPreviewLayer alloc] initWithSession:self.session];
    videoPreviewLayer.frame = viewController.view.bounds;
    [videoPreviewLayer setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    self.videoView = [[UIView alloc] init];
    
    UIButton *stopButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [stopButton setTitle:@"Stop capturing" forState:UIControlStateNormal];
    [stopButton setFrame:CGRectMake(viewController.view.frame.size.width/2, viewController.view.frame.size.height-50, 150, 30)];
    [stopButton addTarget:self action:@selector(stopCapture:) forControlEvents:UIControlEventTouchUpInside];
    
    self.videoView.frame = viewController.view.frame;
    [self.videoView.layer addSublayer:videoPreviewLayer];
    [viewController.view addSubview:self.videoView];
    [viewController.view addSubview:stopButton];
    
    [self.session startRunning];
    
}


-(void)stopCapture:(id) sender {
    [self.session stopRunning];
    [self.videoView removeFromSuperview];
}

@end
