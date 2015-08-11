//
//  TipsTableViewController.h
//  InWestminster
//
//  Created by leihe on 12/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TipsTableViewController : UITableViewController<UISearchBarDelegate, UISearchDisplayDelegate>
@property (strong, nonatomic) NSArray *tipsArray;
@property (strong, nonatomic) NSMutableArray *filteredTipsArray;
@property IBOutlet UISearchBar *tipsSearchBar;

@end
