//
//  FifthViewController.m
//  InWestminster
//
//  Created by leihe on 11/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()


@end

CGFloat animatedDistance;
static const CGFloat KEYBOARD_ANIMATION_DURATION = 0.3;
static const CGFloat MINIMUM_SCROLL_FRACTION = 0.2;
static const CGFloat MAXIMUM_SCROLL_FRACTION = 0.8;
static const CGFloat PORTRAIT_KEYBOARD_HEIGHT = 216;
static const CGFloat LANDSCAPE_KEYBOARD_HEIGHT = 162;




@implementation ProfileViewController

-(IBAction)save:(id)sender{
    //Telephone Number Save String
    NSString *saveStringTelNumber=fieldTelNumber.text;
    NSUserDefaults *defaultsTelNumber=[NSUserDefaults standardUserDefaults];
    [defaultsTelNumber setObject:saveStringTelNumber forKey:@"saveStringTelNumber"];
    [defaultsTelNumber synchronize];
    
    //Student ID Save String
    NSString *saveStringStudentID=fieldStudentID.text;
    NSUserDefaults *defaultsStudentID=[NSUserDefaults standardUserDefaults];
    [defaultsStudentID setObject:saveStringStudentID forKey:@"saveStringStudentID"];
    [defaultsStudentID synchronize];
    
    //Email Save String
    NSString *saveStringEmail=fieldEmail.text;
    NSUserDefaults *defaultsEmail=[NSUserDefaults standardUserDefaults];
    [defaultsEmail setObject:saveStringEmail forKey:@"saveStringEmail"];
    [defaultsEmail synchronize];
    
    //Course Leader Save String
    NSString *saveStringCourseLeader=fieldCourseLeader.text;
    NSUserDefaults *defaultsCourseLeader=[NSUserDefaults standardUserDefaults];
    [defaultsCourseLeader setObject:saveStringCourseLeader forKey:@"saveStringCourseLeader"];
    [defaultsCourseLeader synchronize];
    
    //Module Save String
    NSString *saveStringModule=fieldModule.text;
    NSUserDefaults *defaultsModule=[NSUserDefaults standardUserDefaults];
    [defaultsModule setObject:saveStringModule forKey:@"saveStringModule"];
    [defaultsModule synchronize];
    
    //Address Save String
    NSString *saveStringAddress=fieldAddress.text;
    NSUserDefaults *defaultsAddress=[NSUserDefaults standardUserDefaults];
    [defaultsAddress setObject:saveStringAddress forKey:@"saveStringAddress"];
    [defaultsAddress synchronize];
    
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Great!" message:@"Your information has been successfully saved. You can change it anytime by clicking the fields below." delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];
    [alert show];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor clearColor];
    self->fieldTelNumber.delegate=self;
    self->fieldStudentID.delegate=self;

    self->fieldEmail.delegate=self;

    self->fieldCourseLeader.delegate=self;

    self->fieldModule.delegate=self;
    self->fieldAddress.delegate=self;


    //Telephone Number Load String
    NSUserDefaults *defaultsTelNumber=[NSUserDefaults standardUserDefaults];
    NSString *loadStringTelNumber=[defaultsTelNumber objectForKey:@"saveStringTelNumber"];
    [fieldTelNumber setText:loadStringTelNumber];
    
    //Student ID Load String
    NSUserDefaults *defaultsStudentID=[NSUserDefaults standardUserDefaults];
    NSString *loadStringStudentID=[defaultsStudentID objectForKey:@"saveStringStudentID"];
    [fieldStudentID setText:loadStringStudentID];

    //Email Load String
    NSUserDefaults *defaultsEmail=[NSUserDefaults standardUserDefaults];
    NSString *loadStringEmail=[defaultsEmail objectForKey:@"saveStringEmail"];
    [fieldEmail setText:loadStringEmail];

    //Course Leader Load String
    NSUserDefaults *defaultsCourseLeader=[NSUserDefaults standardUserDefaults];
    NSString *loadStringCourseLeader=[defaultsCourseLeader objectForKey:@"saveStringCourseLeader"];
    [fieldCourseLeader setText:loadStringCourseLeader];

    //Module Load String
    NSUserDefaults *defaultsModule=[NSUserDefaults standardUserDefaults];
    NSString *loadStringModule=[defaultsModule objectForKey:@"saveStringModule"];
    [fieldModule setText:loadStringModule];

    //Address Load String
    NSUserDefaults *defaultsAddress=[NSUserDefaults standardUserDefaults];
    NSString *loadStringAddress=[defaultsAddress objectForKey:@"saveStringAddress"];
    [fieldAddress setText:loadStringAddress];

}

-(IBAction)dismissTelNumber:(id)sender{
    [sender resignFirstResponder];
}
-(IBAction)dismissStudentId:(id)sender{
    [sender resignFirstResponder];
}
-(IBAction)dismissEmail:(id)sender{
    [sender resignFirstResponder];
}
-(IBAction)dismissCourseLeader:(id)sender{
    [sender resignFirstResponder];
}
-(IBAction)dismissModule:(id)sender{
    [sender resignFirstResponder];
}
-(IBAction)dismissAddress:(id)sender{
    [sender resignFirstResponder];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField

{
    
    CGRect textFieldRect =
    
    [self.view.window convertRect:textField.bounds fromView:textField];
    
    CGRect viewRect =
    
    [self.view.window convertRect:self.view.bounds fromView:self.view];
    
    CGFloat midline = textFieldRect.origin.y + 0.5 * textFieldRect.size.height;
    
    CGFloat numerator =
    
    midline - viewRect.origin.y
    
    - MINIMUM_SCROLL_FRACTION * viewRect.size.height;
    
    CGFloat denominator =
    
    (MAXIMUM_SCROLL_FRACTION - MINIMUM_SCROLL_FRACTION)
    
    * viewRect.size.height;
    
    CGFloat heightFraction = numerator / denominator;
    
    if (heightFraction < 0.0)
        
    {
        
        heightFraction = 0.0;
        
    }
    
    else if (heightFraction > 1.0)
        
    {
        
        heightFraction = 1.0;
        
    }
    
    UIInterfaceOrientation orientation =
    
    [[UIApplication sharedApplication] statusBarOrientation];
    
    if (orientation == UIInterfaceOrientationPortrait ||
        
        orientation == UIInterfaceOrientationPortraitUpsideDown)
        
    {
        
        animatedDistance = floor(PORTRAIT_KEYBOARD_HEIGHT * heightFraction);
        
    }
    
    else
        
    {
        
        animatedDistance = floor(LANDSCAPE_KEYBOARD_HEIGHT * heightFraction);
        
    }
    
    CGRect viewFrame = self.view.frame;
    
    viewFrame.origin.y -= animatedDistance;
    
    
    
    [UIView beginAnimations:nil context:NULL];
    
    [UIView setAnimationBeginsFromCurrentState:YES];
    
    [UIView setAnimationDuration:KEYBOARD_ANIMATION_DURATION];
    
    
    
    [self.view setFrame:viewFrame];
    
    
    
    [UIView commitAnimations];
    
}



- (void)textFieldDidEndEditing:(UITextField *)textField

{
    
    CGRect viewFrame = self.view.frame;
    
    viewFrame.origin.y += animatedDistance;
    
    
    
    [UIView beginAnimations:nil context:NULL];
    
    [UIView setAnimationBeginsFromCurrentState:YES];
    
    [UIView setAnimationDuration:KEYBOARD_ANIMATION_DURATION];
    
    
    
    [self.view setFrame:viewFrame];
    
    
    
    [UIView commitAnimations];
    
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField

{
    
    [textField resignFirstResponder];
    
    return YES;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
