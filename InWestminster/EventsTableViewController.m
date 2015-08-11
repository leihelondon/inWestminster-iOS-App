//
//  EventsTableViewController.m
//  InWestminster
//
//  Created by leihe on 13/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import "EventsTableViewController.h"
#import "EventsCell.h"
#import "EventsDetailViewController.h"

@interface EventsTableViewController ()

@end

@implementation EventsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //UIImageView *eventsImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"whiteBackground.png"]];
    //[eventsImageView setFrame:self.tableView.frame];
    
    //self.tableView.backgroundView = eventsImageView;
    
    _Title = @[@"Christine Douglass and Nina Mangalanayagam",
               @"Interior Architecture BA Honours exhibition at Interior Educators at Free Range",
               @"EASTmedicine Summer School 2015",
               @"Comparing Children’s Media Around the World: Policies, Texts and Audiences",
               @"New perspectives in assessment in translation training: bridging the gap between academic and professional assessment",
               @"Graham Murdock – The Political Economy of Crisis and the Crisis of Political Economy: The Challenge of Sustainability",];
    _ThumbImages = @[@"thumbChristine.png",
                   @"thumbInterior.png",
                   @"thumbEast.png",
                   @"thumbComparing.png",
                   @"thumbNew.png",
                   @"thumbGraham.png",];
    _DetailImages = @[@"Christine.png",
                      @"Interior.png",
                      @"East.png",
                      @"Comparing.png",
                      @"New.png",
                      @"Graham.png",];
    _Date =@[@"26 June 2015",
             @"9 July 2015 - 13 July 2015",
             @"20 July 2015",
             @"4 September 2015",
             @"4 September 2015",
             @"15 October 2015",];
    _Time=@[@"9.00am",
            @"6.00pm-9.00pm",
            @"9.00am-6.00pm",
            @"9.00am-7.00pm",
            @"9.00am-5.30pm",
            @"5.00pm-7.00pm",];
    
    self.view.backgroundColor = [UIColor clearColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return _Title.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier= @"EventsCell";
    EventsCell *cell= [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    NSInteger row = [indexPath row];
    
    cell.titleTextView.text=_Title[row];
    cell.dateLabel.text=_Date[row];
    cell.timeLabel.text=_Time[row];
    cell.thumbImage.image = [UIImage imageNamed:_ThumbImages[row]];
    //cell.backgroundColor = [UIColor clearColor];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"showEventDetails"]) {
        EventsDetailViewController *eventsDetailViewController=[segue destinationViewController];
        NSIndexPath *eventsIndexPath=[self.tableView indexPathForSelectedRow];
        NSInteger row= [eventsIndexPath row];
        eventsDetailViewController.EventsDetailModal = @[_Title[row],_Date[row],_Time[row],_DetailImages[row]];
    }
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
