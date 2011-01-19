    //
//  MyScrollView.m
//  ScrollViewSubClassWithDelegate
//
//  Created by Christopher Motl on 1/18/11.
//  Copyright 2011 cmotl.com. All rights reserved.
//

#import "MyScrollView.h"


@implementation MyScrollView


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	[super touchesBegan:touches withEvent:event];
	[self.nextResponder touchesBegan:touches withEvent:event];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	[super touchesEnded:touches withEvent:event];
	[self.nextResponder touchesEnded:touches withEvent:event];
}

- (void)dealloc {
    [super dealloc];
}


@end