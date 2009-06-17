//
//  TallyTrucksViewController.m
//  TallyTrucks
//
//  Created by Dan Grigsby on 4/27/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "TallyTrucksViewController.h"

@implementation TallyTrucksViewController


-(IBAction)buttonPressed {
	[self addATruck];
}

-(void)addATruck {
	i += 1;
	[self updateTitle];
}

-(void)removeATruck {
	i -= 1;
	[self updateTitle];
}

-(void)updateTitle {
	NSString *title = [NSString stringWithFormat:@"%i", i]; 
	[button setTitle:title forState:UIControlStateNormal];
	[button setTitle:title forState:UIControlStateHighlighted];
	[button setTitle:title forState:UIControlStateSelected];
	
	// ^^^ can't combine as bitmask; don't believe what you read 	
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	i = 0;
}

/*
 -(void)viewDidAppear:(BOOL)animated {
 [super viewDidAppear:animated];
 }
 */


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES; // supports all interface orientations
	
	/* more general form is:

	return (interfaceOrientation == UIInterfaceOrientationPortrait ||
			interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown ||
			interfaceOrientation == UIInterfaceOrientationLandscapeLeft || 
			interfaceOrientation == UIInterfaceOrientationLandscapeRight)
	 
	*/
}

- (void)dealloc {
    [super dealloc];
}

@end
