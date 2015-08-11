//
//  EventsMapViewController.m
//  InWestminster
//
//  Created by leihe on 14/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import "EventsMapViewController.h"
#import "MapPin.h"

@interface EventsMapViewController ()

@end

@implementation EventsMapViewController
@synthesize mapview;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MKCoordinateRegion region = {{0.0, 0.0}, {0.0,0.0}};
    region.center.latitude = 51.516958;
    region.center.longitude = -0.143010;
    region.span.longitudeDelta = 0.01f;
    region.span.latitudeDelta = 0.01f;
    [mapview setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc]init];
    ann.title = @"University of Westminster";
    ann.subtitle = @"UK";
    ann.coordinate = region.center;
    [mapview addAnnotation:ann];
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


-(IBAction)setMap:(id)sender{
    
    switch (((UISegmentedControl *) sender).selectedSegmentIndex) {
        case 0:
            mapview .mapType=MKMapTypeStandard;
            break;
        case 1:
            mapview .mapType=MKMapTypeStandard;
            break;
        case 2:
            mapview .mapType=MKMapTypeHybrid;
            break;
        default:
            break;
    }
}

-(IBAction)getLocation:(id)sender{
    mapview.showsUserLocation=YES;
    NSLog(@"It's wokring");
}

-(IBAction)getDirection:(id)sender{
    NSString *urlString = @"http://maps.apple.com/maps?daddr=51.516958,-0.143010";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
}


@end
