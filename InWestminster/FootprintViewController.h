//
//  ThirdViewController.h
//  InWestminster
//
//  Created by leihe on 11/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>

@interface FootprintViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *twitterBtn;
@property (weak, nonatomic) IBOutlet UIButton *facebookBtn;
@property (weak, nonatomic) IBOutlet UIButton *tateBtn;
@property (weak, nonatomic) IBOutlet UIButton *parliamentBtn;
@property (weak, nonatomic) IBOutlet UIButton *abbeyBtn;
@property (weak, nonatomic) IBOutlet UIButton *cathedralBtn;
@property (weak, nonatomic) IBOutlet UIButton *victoriaBtn;
@property (weak, nonatomic) IBOutlet UIImageView *tatePrssedImage;
@property (weak, nonatomic) IBOutlet UIImageView *cathedralPrssedImage;
@property (weak, nonatomic) IBOutlet UIImageView *abbeyPrssedImage;
@property (weak, nonatomic) IBOutlet UIImageView *parliamentPrssedImage;
@property (weak, nonatomic) IBOutlet UIImageView *victoriaPrssedImage;
- (IBAction)tateBtnPressed:(id)sender;
- (IBAction)parliamentBtnPressed:(id)sender;
- (IBAction)abbeyBtnPressed:(id)sender;
- (IBAction)cathedralBtnPressed:(id)sender;
- (IBAction)victoriaBtnPressed:(id)sender;
- (IBAction)sendFacebookText:(id)sender;
- (IBAction)sendTwitterText:(id)sender;

@end
