//
//  TipsDetailViewController.m
//  InWestminster
//
//  Created by leihe on 12/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import "TipsDetailViewController.h"

@interface TipsDetailViewController ()

@end

@implementation TipsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *filename = @"background.png";
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    if (screenRect.size.height == 568.0f)
        filename = [filename stringByReplacingOccurrencesOfString:@".png" withString:@"For5.png"];
    if (screenRect.size.height == 667.0f)
        filename = [filename stringByReplacingOccurrencesOfString:@".png" withString:@"For6.png"];
    
    
    if ([_tipsTitle isEqualToString:@"English language support"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/international/english-language-support"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Course Handbooks"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/study/current-students/your-studies/course-handbooks"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"How to use Blackboard?"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/study/current-students/your-studies/blackboard"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Personal tutors"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/study/current-students/your-studies/personal-tutoring"]]];
    }
    if ([_tipsTitle isEqualToString:@"Timetables"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/study/current-students/your-studies/timetables"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Visas and advice"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/international/advice-and-visas"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Hints and tips"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/international/advice-and-visas/living-in-the-uk/hints-and-tips"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Careers and employment"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/international/advice-and-visas/living-in-the-uk/careers-and-employment"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Exhibitions, theatres and cheap eats"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/international/advice-and-visas/living-in-the-uk/exhibitions,-theatre-and-cheap-eats"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Embassies in London"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/international/advice-and-visas/living-in-the-uk/embassies-in-london"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Check your course fees"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/study/prospective-students/fees-and-funding/fees"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Paying your fees"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/study/prospective-students/fees-and-funding/fees/payment-methods"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Budgeting"]) {
        
         [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/study/prospective-students/student-life-in-london/living-costs/budgeting"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Register with a doctor"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/study/current-students/support-and-facilities/health-services/registering-with-a-doctor"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Emergencies"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/study/current-students/support-and-facilities/health-services/emergencies"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Common illness"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/study/current-students/support-and-facilities/health-services/common-illnesses"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Support for LGBT student"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/study/current-students/support-and-facilities/support-for-lgbt-students"]]];
    }
    
    if ([_tipsTitle isEqualToString:@"Disability learning support"]) {
        
        [tipsWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.westminster.ac.uk/study/current-students/support-and-facilities/disabilities"]]];
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

@end
