//
//  FriendsDetailViewController.m
//  InWestminster
//
//  Created by leihe on 13/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import "FriendsDetailViewController.h"

@interface FriendsDetailViewController ()

@end

CGFloat animatedDistance;
static const CGFloat KEYBOARD_ANIMATION_DURATION = 0.3;
static const CGFloat MINIMUM_SCROLL_FRACTION = 0.2;
static const CGFloat MAXIMUM_SCROLL_FRACTION = 0.8;
static const CGFloat PORTRAIT_KEYBOARD_HEIGHT = 216;
static const CGFloat LANDSCAPE_KEYBOARD_HEIGHT = 162;

@implementation FriendsDetailViewController
@synthesize frienddb;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.frienddb){
        [self.name setText:[self.frienddb valueForKey:@"name"]];
        [self.mobile setText:[self.frienddb valueForKey:@"mobile"]];
        [self.email setText:[self.frienddb valueForKey:@"email"]];
        [self.course setText:[self.frienddb valueForKey:@"course"]];
    }
    
    self->_name.delegate=self;
    self->_mobile.delegate=self;
    
    self->_email.delegate=self;
    
    self->_course.delegate=self;
    
    NSString *filename = @"background.png";
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    if (screenRect.size.height == 568.0f)
        filename = [filename stringByReplacingOccurrencesOfString:@".png" withString:@"For5.png"];
    if (screenRect.size.height == 667.0f)
        filename = [filename stringByReplacingOccurrencesOfString:@".png" withString:@"For6.png"];
   
}

-(NSManagedObjectContext*)managedObjectContext{
    NSManagedObjectContext *context=nil;
    id delegate = [[UIApplication sharedApplication]delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]){
        context=[delegate managedObjectContext];
    }
    return context;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btnSave:(id)sender{
    NSManagedObjectContext *context=[self managedObjectContext];
    if (self.frienddb){
        //update existing device
        [self.frienddb setValue:self.name.text forKey:@"name"];
        [self.frienddb setValue:self.mobile.text forKey:@"mobile"];
        [self.frienddb setValue:self.email.text forKey:@"email"];
        [self.frienddb setValue:self.course.text forKey:@"course"];
    }else{
        //Create a new device
        NSManagedObject *newDevice=[NSEntityDescription insertNewObjectForEntityForName:@"Friends" inManagedObjectContext:context];
        [newDevice setValue:self.name.text forKey:@"name"];
        [newDevice setValue:self.mobile.text forKey:@"mobile"];
        [newDevice setValue:self.email.text forKey:@"email"];
        [newDevice setValue:self.course.text forKey:@"course"];
    }
    NSError *error=nil;
    //save the object to persistent store
    if (![context save:&error]){
        NSLog(@"Can't save! %@ %@", error,[error localizedDescription]);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)btnBack:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
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


    


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
