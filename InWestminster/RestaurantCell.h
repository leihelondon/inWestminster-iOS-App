//
//  RestaurantCell.h
//  InWestminster
//
//  Created by leihe on 11/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RestaurantCell : UITableViewCell

@property(strong, nonatomic) IBOutlet UILabel *titleLabel;
@property(strong, nonatomic) IBOutlet UILabel *addressOneLabel;
@property(strong, nonatomic) IBOutlet UILabel *addressTwoLabel;
@property(strong, nonatomic) IBOutlet UILabel *ratingLabel;
@property(strong, nonatomic) IBOutlet UIImageView *ratingImage;

@end
