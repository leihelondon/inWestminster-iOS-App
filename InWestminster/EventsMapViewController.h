//
//  EventsMapViewController.h
//  InWestminster
//
//  Created by leihe on 14/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface EventsMapViewController : UIViewController{
    MKMapView *mapview;
}

@property (nonatomic, retain)IBOutlet MKMapView *mapview;
-(IBAction)setMap:(id)sender;
-(IBAction)getLocation:(id)sender;
-(IBAction)getDirection:(id)sender;


@end
