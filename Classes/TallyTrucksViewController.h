//
//  TallyTrucksViewController.h
//  TallyTrucks
//
//  Created by Dan Grigsby on 4/27/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TallyTrucksViewController : UIViewController {
	IBOutlet UIButton *button;
	int i;
}

-(IBAction)buttonPressed;
-(void)addATruck;
-(void)removeATruck;
-(void)updateTitle;

@end

