//
//  TallyTrucksAppDelegate.h
//  TallyTrucks
//
//  Created by Dan Grigsby on 4/27/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TallyTrucksViewController;

@interface TallyTrucksAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TallyTrucksViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TallyTrucksViewController *viewController;

@end

