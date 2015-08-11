//
//  ThirdViewController.m
//  InWestminster
//
//  Created by leihe on 11/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import "FootprintViewController.h"

@interface FootprintViewController ()

@end

@implementation FootprintViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_facebookBtn setBackgroundImage:[UIImage imageNamed:@"facebook.png"] forState:UIControlStateNormal];
    [_twitterBtn setBackgroundImage:[UIImage imageNamed:@"twitter.png"] forState:UIControlStateNormal];
    [_tateBtn setBackgroundImage:[UIImage imageNamed:@"footPrintBrown.png"] forState:UIControlStateNormal];
    _tatePrssedImage.hidden=YES;
    [_parliamentBtn setBackgroundImage:[UIImage imageNamed:@"footPrintBrown.png"] forState:UIControlStateNormal];
    _parliamentBtn.hidden=YES;
    [_abbeyBtn setBackgroundImage:[UIImage imageNamed:@"footPrintBrown.png"] forState:UIControlStateNormal];
    _abbeyBtn.hidden=YES;
    [_victoriaBtn setBackgroundImage:[UIImage imageNamed:@"footPrintBrown.png"] forState:UIControlStateNormal];
    _victoriaPrssedImage.hidden=YES;
    [_cathedralBtn setBackgroundImage:[UIImage imageNamed:@"footPrintBrown.png"] forState:UIControlStateNormal];
    _cathedralPrssedImage.hidden=YES;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)tateBtnPressed:(id)sender{
    _tateBtn.hidden=YES;
    _tatePrssedImage.hidden=NO;
    
}

- (IBAction)parliamentBtnPressed:(id)sender {
}

- (IBAction)abbeyBtnPressed:(id)sender {
}

- (IBAction)cathedralBtnPressed:(id)sender {
    _cathedralBtn.hidden=YES;
    _cathedralPrssedImage.hidden=NO;
}

- (IBAction)victoriaBtnPressed:(id)sender {
    _victoriaBtn.hidden=YES;
    _victoriaPrssedImage.hidden=NO;
}

- (IBAction)sendFacebookText:(id)sender {
        SLComposeViewController *sendText=[SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [sendText setInitialText:@"I have been to the House of Parliament this weekend. It was great fun. Let's explore London togehter!"];
        [self presentViewController:sendText animated:YES completion:nil];
}

- (IBAction)sendTwitterText:(id)sender {
    SLComposeViewController *sendTweet=[SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [sendTweet setInitialText:@"#london#fun Let's explore more iconic places:)"];
    [self presentViewController:sendTweet animated:YES completion:nil];
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
