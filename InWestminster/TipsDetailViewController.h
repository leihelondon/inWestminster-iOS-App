//
//  TipsDetailViewController.h
//  InWestminster
//
//  Created by leihe on 12/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TipsDetailViewController : UIViewController{
    IBOutlet UIWebView *tipsWebView;
}

@property(strong, nonatomic) NSString *tipsTitle;

@end
