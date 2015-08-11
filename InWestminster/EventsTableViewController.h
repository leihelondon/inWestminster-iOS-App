//
//  EventsTableViewController.h
//  InWestminster
//
//  Created by leihe on 13/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventsTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *ThumbImages;
@property (nonatomic, strong) NSArray *DetailImages;
@property (nonatomic, strong) NSArray *Title;
@property (nonatomic, strong) NSArray *Date;
@property (nonatomic, strong) NSArray *Time;

@end
