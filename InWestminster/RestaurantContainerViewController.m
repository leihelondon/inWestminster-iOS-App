//
//  RestaurantContainerViewController.m
//  InWestminster
//
//  Created by leihe on 11/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import "RestaurantContainerViewController.h"

@interface RestaurantContainerViewController ()

@end

@implementation RestaurantContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *filename = @"background.png";
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    if (screenRect.size.height == 568.0f)
        filename = [filename stringByReplacingOccurrencesOfString:@".png" withString:@"For5.png"];
    if (screenRect.size.height == 667.0f)
        filename = [filename stringByReplacingOccurrencesOfString:@".png" withString:@"For6.png"];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:filename]];

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

@end
