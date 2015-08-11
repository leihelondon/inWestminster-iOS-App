//
//  EventsCell.h
//  InWestminster
//
//  Created by leihe on 14/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventsCell : UITableViewCell

@property(strong, nonatomic) IBOutlet UITextView *titleTextView;
@property(strong, nonatomic) IBOutlet UILabel *dateLabel;
@property(strong, nonatomic) IBOutlet UILabel *timeLabel;
@property(strong, nonatomic) IBOutlet UIImageView *thumbImage;

@end
