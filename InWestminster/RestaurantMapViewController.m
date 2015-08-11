//
//  RestaurantMapViewController.m
//  InWestminster
//
//  Created by leihe on 11/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import "RestaurantMapViewController.h"

@interface RestaurantMapViewController ()

@end

@implementation RestaurantMapViewController{
    GMSMapView *mapView_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    if ([_restaurantTitle isEqualToString:@"Kitchen Table"]) {
        
        // Do any additional setup after loading the view.
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:51.520406
                     longitude:-0.136464
                          zoom:12];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(51.520406, -0.136464);
        marker.title = @"Kitchen Table";
        marker.snippet = @"W1T 4QG";
        marker.map = mapView_;
        
    }
    
    if ([_restaurantTitle isEqualToString:@"Archipelago"]) {
        
        // Do any additional setup after loading the view.
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:51.520464
                     longitude:-0.138724
                          zoom:12];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(51.520464, -0.138724);
        marker.title = @"Archipelago";
        marker.snippet = @"W1T 4JJ";
        marker.map = mapView_;
        
    }
    
    if ([_restaurantTitle isEqualToString:@"Tsunami"]) {
        
        // Do any additional setup after loading the view.
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:51.520740
                    longitude:-0.137290
                         zoom:12];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(51.520740, -0.137290);
        marker.title = @"Tsunami";
        marker.snippet = @"W1T 4PY";
        marker.map = mapView_;
        
    }
    
    if ([_restaurantTitle isEqualToString:@"Portland Café"]) {
        
        // Do any additional setup after loading the view.
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:51.520005
                     longitude:-0.142597
                          zoom:12];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(51.520005, -0.142597);
        marker.title = @"Portland Café";
        marker.snippet = @"W1W 6PU";
        marker.map = mapView_;
        
    }
    
    if ([_restaurantTitle isEqualToString:@"Trattoria Montebianco"]) {
        
        // Do any additional setup after loading the view.
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:51.522310
                     longitude:-0.140775
                          zoom:12];
        mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        mapView_.myLocationEnabled = YES;
        self.view = mapView_;
        
        // Creates a marker in the center of the map.
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(51.522310, -0.140775);
        marker.title = @"Trattoria Montebianco";
        marker.snippet = @"W1T 6NQ";
        marker.map = mapView_;
        
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
