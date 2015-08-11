//
//  RestaurantDetailViewController.m
//  InWestminster
//
//  Created by leihe on 11/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import "RestaurantDetailViewController.h"
#import "RestaurantMapViewController.h"

@interface RestaurantDetailViewController ()

@end

@implementation RestaurantDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    [_facebookBtn setBackgroundImage:[UIImage imageNamed:@"facebook.png"] forState:UIControlStateNormal];
    [_mapBtn setBackgroundImage:[UIImage imageNamed:@"map.png"] forState:UIControlStateNormal];

    _titleLabel.text=_RestaurantDetailModal[0];
    _addressOneLabel.text=_RestaurantDetailModal[1];
    _addressTwoLabel.text=_RestaurantDetailModal[2];
    _ratingLabel.text=_RestaurantDetailModal[3];
    _ratingImage.image=[UIImage imageNamed:_RestaurantDetailModal[4]];
    _detailImage.image=[UIImage imageNamed:_RestaurantDetailModal[5]];
    _descriptionLabel.text=_RestaurantDetailModal[6];
    _reviewLabel.text=_RestaurantDetailModal[7];
    _cuisineLabel.text=_RestaurantDetailModal[8];
    _telephoneLabel.text=_RestaurantDetailModal[9];
    self.navigationItem.title=_RestaurantDetailModal[0];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"showRestaurantMap"]){
        RestaurantMapViewController *controller = (RestaurantMapViewController *)segue.destinationViewController;
        controller.restaurantTitle = _RestaurantDetailModal[0];
    }
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

- (IBAction)sendFacebookText:(UIButton *)sender {
    SLComposeViewController *sendText=[SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    
    if ([_titleLabel.text isEqualToString:@"Kitchen Table"]) {
        [sendText setInitialText:@"Kitchen Table is so lovely..."];
    }
    if ([_titleLabel.text isEqualToString:@"Archipelago"]) {
        [sendText setInitialText:@"Archipelago is so lovely..."];
    }
    if ([_titleLabel.text isEqualToString:@"Tsunami"]) {
        [sendText setInitialText:@"Tsunami is so lovely..."];
    }
    if ([_titleLabel.text isEqualToString:@"Portland Café"]) {
        [sendText setInitialText:@"Portland Café is so lovely..."];
    }
    if ([_titleLabel.text isEqualToString:@"Trattoria Montebianco"]) {
        [sendText setInitialText:@"Trattoria Montebianco is so lovely..."];
    }
    
    [self presentViewController:sendText animated:YES completion:nil];
}
@end
