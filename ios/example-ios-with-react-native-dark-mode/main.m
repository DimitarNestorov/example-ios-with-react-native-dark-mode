//
//  main.m
//  example-ios-with-react-native-dark-mode
//
//  Created by Dimitar Nestorov on 1/29/20.
//  Copyright © 2020 Dimitar Nestorov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
