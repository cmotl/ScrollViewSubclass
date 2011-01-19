//
//  ScrollViewSubClassWithDelegateAppDelegate.h
//  ScrollViewSubClassWithDelegate
//
//  Created by Christopher Motl on 1/18/11.
//  Copyright 2011 cmotl.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScrollViewSubClassWithDelegateViewController;

@interface ScrollViewSubClassWithDelegateAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ScrollViewSubClassWithDelegateViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ScrollViewSubClassWithDelegateViewController *viewController;

@end

