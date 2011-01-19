//
//  ScrollViewSubClassWithDelegateViewController.m
//  ScrollViewSubClassWithDelegate
//
//  Created by Christopher Motl on 1/18/11.
//  Copyright 2011 cmotl.com. All rights reserved.
//

#import "ScrollViewSubClassViewController.h"

@implementation ScrollViewSubClassViewController

@synthesize scrollView, viewToScroll;

static BOOL zoomed = NO;
/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
	
	[self setWantsFullScreenLayout:YES];
	
	scrollView.contentSize = CGSizeMake(viewToScroll.frame.size.width, viewToScroll.frame.size.height);
	scrollView.maximumZoomScale = 4.0;
	scrollView.minimumZoomScale = 0.75;
	scrollView.clipsToBounds = YES;
	scrollView.delegate = self;
	
	// >= iOS 3.2
	//UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap)];
	//[scrollView addGestureRecognizer: singleTap];
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
	return viewToScroll;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

-(void)handleSingleTap{
	UIAlertView *alert = [[UIAlertView alloc]
						  initWithTitle: @"Sweet!"
						  message: @"You tapped the scroll view"
						  delegate: nil
						  cancelButtonTitle:@"OK"
						  otherButtonTitles:nil];
	[alert show];
	[alert release];	
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *aTouch = [touches anyObject];
    if (aTouch.tapCount == 2) {
        [NSObject cancelPreviousPerformRequestsWithTarget:self];
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{

	UITouch *touch = [touches anyObject];
	NSInteger tapCount = [touch tapCount];
	
	if (tapCount == 1) {
		[self performSelector:@selector(handleSingleTap) withObject:touch afterDelay:0.3];
	}
	else if (tapCount == 2) {
		if (zoomed) {
			[scrollView setZoomScale:1 animated:YES];
			zoomed = NO;
		}
		else {
			[scrollView setZoomScale:2 animated:YES];
			zoomed = YES;
		}
	}
	
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self.scrollView = nil;
	self.viewToScroll = nil;
}

- (void)dealloc {
	[scrollView release];
	[viewToScroll release];
    [super dealloc];
}

@end
