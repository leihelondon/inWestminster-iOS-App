//
//  FriendsViewController.m
//  InWestminster
//
//  Created by leihe on 13/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import "FriendsTableViewController.h"
#import "FriendsDetailViewController.h"
#import <CoreData/CoreData.h>


@interface FriendsTableViewController ()

@end

@implementation FriendsTableViewController

-(NSManagedObjectContext *)managedObjectContext
{
    NSManagedObjectContext *context=nil;
    id delegate=[[UIApplication sharedApplication]delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context=[delegate managedObjectContext];
    }
    return context;
}

-(id)initWithStyle:(UITableViewStyle)style{
    self=[super initWithStyle:style];
    if (self) {
        //custom initialization
    }
    return self;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    NSString *filename = @"background.png";
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    if (screenRect.size.height == 568.0f)
        filename = [filename stringByReplacingOccurrencesOfString:@".png" withString:@"For5.png"];
    if (screenRect.size.height == 667.0f)
        filename = [filename stringByReplacingOccurrencesOfString:@".png" withString:@"For6.png"];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    //Fetch the devices from persistentdata store
    NSManagedObjectContext *managedObjectContext=[self managedObjectContext];
    NSFetchRequest *fetchRequest=[[NSFetchRequest alloc] initWithEntityName:@"Friends"];
    self.friendsArray=[[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
    [self.tableView reloadData];
}

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    //Dispose of any resources that can be recreated.
}

#pragma mark- Table view data source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.friendsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    //configure the cell...
    NSManagedObject *device=[self.friendsArray objectAtIndex:indexPath.row];
    [cell.textLabel setText:[NSString stringWithFormat:@"%@ %@ %@", [device valueForKey:@"name"], [device valueForKey:@"mobile"],[device valueForKey:@"course"]]];
    [cell.detailTextLabel setText:[device valueForKey:@"email"]];
    cell.textLabel.lineBreakMode = NSLineBreakByWordWrapping; // Pre-iOS6 use UILineBreakModeWordWrap
    cell.textLabel.numberOfLines = 0;  // 0 means no max.
    cell.backgroundColor = [UIColor clearColor];

    return cell;
}

//Override to support conditional editing of the table view.

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    //Return NO if do not want the specified itme to be editable
    return YES;
}

//Override to support editing the table view.

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSManagedObjectContext *context=[self managedObjectContext];
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //Delete object from database
        [context deleteObject:[self.friendsArray objectAtIndex:indexPath.row]];
        
        NSError *error=nil;
        if (![context save:&error]) {
            NSLog(@"Can't Delete! %@ %@", error, [error localizedDescription]);
            return;
        }
        
        //remove device from table view
        [self.friendsArray removeObjectAtIndex:indexPath.row];
        [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"UpdateContacts"]) {
        NSManagedObject *selectedDevice=[self.friendsArray objectAtIndex:[[self.tableView indexPathForSelectedRow] row]];
        FriendsDetailViewController *destViewController=segue.destinationViewController;
        destViewController.frienddb=selectedDevice;
    }
}



@end
