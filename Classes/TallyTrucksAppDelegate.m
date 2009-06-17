//
//  TallyTrucksAppDelegate.m
//  TallyTrucks
//
//  Created by Dan Grigsby on 4/27/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "TallyTrucksAppDelegate.h"
#import "TallyTrucksViewController.h"

@implementation TallyTrucksAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {        
	application.applicationSupportsShakeToEdit = YES;
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
