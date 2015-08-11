//
//  RestaurantDetailViewController.h
//  InWestminster
//
//  Created by leihe on 11/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>

@interface RestaurantDetailViewController : UIViewController

@property(strong, nonatomic) IBOutlet UILabel *titleLabel;
@property(strong, nonatomic) IBOutlet UILabel *addressOneLabel;
@property(strong, nonatomic) IBOutlet UILabel *addressTwoLabel;
@property(strong, nonatomic) IBOutlet UILabel *ratingLabel;
@property(strong, nonatomic) IBOutlet UITextView *descriptionLabel;
@property(strong, nonatomic) IBOutlet UILabel *reviewLabel;
@property(strong, nonatomic) IBOutlet UILabel *cuisineLabel;
@property(strong, nonatomic) IBOutlet UILabel *telephoneLabel;
@property(strong, nonatomic) IBOutlet UIImageView *ratingImage;
@property(strong, nonatomic) IBOutlet UIImageView *detailImage;
@property (strong, nonatomic) NSArray *RestaurantDetailModal;
- (IBAction)sendFacebookText:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *facebookBtn;
@property (weak, nonatomic) IBOutlet UIButton *mapBtn;

@end
