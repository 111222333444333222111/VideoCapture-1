//
//  ViewController.m
//  VideoCapture
//
//  Created by Максимов Руслан on 15.10.15.
//  Copyright © 2015 maksimov. All rights reserved.
//

#import "ViewController.h"
#import "RMCaptureHandler.h"

@interface ViewController ()

@property RMCaptureHandler *captureHandler;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)captureVideo:(id)sender {
    self.captureHandler = [[RMCaptureHandler alloc] init];
    [self.captureHandler startCaptureInView:self];
}

@end
