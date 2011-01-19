//
//  ScrollViewSubClassWithDelegateViewController.h
//  ScrollViewSubClassWithDelegate
//
//  Created by Christopher Motl on 1/18/11.
//  Copyright 2011 cmotl.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyScrollView.h"

@interface ScrollViewSubClassViewController  : UIViewController<UIScrollViewDelegate> {
	MyScrollView *scrollView;
	UIView *viewToScroll;
}

@property (nonatomic, retain) IBOutlet MyScrollView *scrollView;
@property (nonatomic, retain) IBOutlet UIView *viewToScroll;

-(void)handleSingleTap;

@end

