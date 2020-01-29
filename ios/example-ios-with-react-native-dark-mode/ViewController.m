//
//  ViewController.m
//  example-ios-with-react-native-dark-mode
//
//  Created by Dimitar Nestorov on 1/29/20.
//  Copyright © 2020 Dimitar Nestorov. All rights reserved.
//

#import <React/RCTRootView.h>

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)buttonPressed:(id)sender {
    NSLog(@"Button Pressed");
    NSURL *jsCodeLocation = [NSURL URLWithString: @"http://localhost:8081/index.ios.bundle?platform=ios"];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                                                        moduleName: @"RNDarkModeView"
                                                 initialProperties: @{}
                                                     launchOptions: nil];
    
    rootView.backgroundColor = [UIColor colorNamed: @"reactNativeVIewBackgroundColor"];

    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController: vc animated: YES completion: nil];
}

@end
