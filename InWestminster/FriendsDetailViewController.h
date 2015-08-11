//
//  FriendsDetailViewController.h
//  InWestminster
//
//  Created by leihe on 13/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface FriendsDetailViewController : UIViewController<UITextFieldDelegate>
@property (strong) NSMutableArray *friendsArray;
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *mobile;
@property (strong, nonatomic) IBOutlet UITextField *email;
@property (strong, nonatomic) IBOutlet UITextField *course;
- (IBAction)btnSave:(id)sender;
- (IBAction)btnBack:(id)sender;

@property (strong) NSManagedObject *frienddb;
@end
