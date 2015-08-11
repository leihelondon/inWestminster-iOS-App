//
//  EventsDetailViewController.h
//  InWestminster
//
//  Created by leihe on 14/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>

@interface EventsDetailViewController : UIViewController{
    
    IBOutlet UITextView *locationTextView;
    IBOutlet UITextView *descriptionTextView;
    IBOutlet UILabel *admissionLabel;
    IBOutlet UITextView *phoneTextView;
    IBOutlet UITextView *websiteTextView;
}

@property(strong, nonatomic) IBOutlet UITextView *titleTextView;
@property(strong, nonatomic) IBOutlet UILabel *dateLabel;
@property(strong, nonatomic) IBOutlet UILabel *timeLabel;
@property(strong, nonatomic) IBOutlet UIImageView *detailImage;
@property (strong, nonatomic) NSArray *EventsDetailModal;
@property (weak, nonatomic) IBOutlet UIButton *facebookBtn;
@property (weak, nonatomic) IBOutlet UIButton *mapBtn;

- (IBAction)sendFacebookText:(id)sender;


@end
