//
//  ScrollViewSubClassWithDelegateAppDelegate.h
//  ScrollViewSubClassWithDelegate
//
//  Created by Christopher Motl on 1/18/11.
//  Copyright 2011 cmotl.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScrollViewSubClassViewController;

@interface ScrollViewSubClassAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ScrollViewSubClassViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ScrollViewSubClassViewController *viewController;

@end

