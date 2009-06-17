//
//  TallyTrucksViewController.m
//  TallyTrucks
//
//  Created by Dan Grigsby on 4/27/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "TallyTrucksViewController.h"

@implementation TallyTrucksViewController

@synthesize undoManager;

-(IBAction)buttonPressed {
	[self addATruck];
}

-(void)addATruck {
	i += 1;
	[[undoManager prepareWithInvocationTarget:self] removeATruck];
	[undoManager setActionName:@"Add A Truck"];
	[self updateTitle];
}

-(void)removeATruck {
	i -= 1;
	[[undoManager prepareWithInvocationTarget:self] addATruck];	
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
	undoManager = [[NSUndoManager alloc] init];
}

-(BOOL)canBecomeFirstResponder {
	return YES;
}

-(void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	[self becomeFirstResponder];
	
}

- (void)viewWillDisappear:(BOOL)animated {
	[self resignFirstResponder];
	[super viewWillDisappear:animated];
}


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
	[undoManager release];
    [super dealloc];
}

@end
