//
//  RestaurantTableViewController.h
//  InWestminster
//
//  Created by leihe on 11/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RestaurantTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *DetailImages;
@property (nonatomic, strong) NSArray *Title;
@property (nonatomic, strong) NSArray *AddressLineOne;
@property (nonatomic, strong) NSArray *AddressLineTwo;
@property (nonatomic, strong) NSArray *RatingImages;
@property (nonatomic, strong) NSArray *Description;
@property (nonatomic, strong) NSArray *Review;
@property (nonatomic, strong) NSArray *Cuisine;
@property (nonatomic, strong) NSArray *Telephone;
@property (nonatomic, strong) NSArray *RatingText;


@end
