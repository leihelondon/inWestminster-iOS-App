//
//  FifthViewController.h
//  InWestminster
//
//  Created by leihe on 11/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController<UITextFieldDelegate>{
    IBOutlet UITextField *fieldTelNumber;
    IBOutlet UITextField *fieldStudentID;
    IBOutlet UITextField *fieldEmail;
    IBOutlet UITextField *fieldCourseLeader;
    IBOutlet UITextField *fieldModule;
    IBOutlet UITextField *fieldAddress;
}

//Database actions

-(IBAction)save:(id)sender;

//Keyboard Dismisses

-(IBAction)dismissTelNumber:(id)sender;
-(IBAction)dismissStudentId:(id)sender;
-(IBAction)dismissEmail:(id)sender;
-(IBAction)dismissCourseLeader:(id)sender;
-(IBAction)dismissModule:(id)sender;
-(IBAction)dismissAddress:(id)sender;


@end


