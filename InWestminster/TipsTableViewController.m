//
//  TipsTableViewController.m
//  InWestminster
//
//  Created by leihe on 12/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import "TipsTableViewController.h"
#import "Tips.h"
#import "TipsDetailViewController.h"

@interface TipsTableViewController ()

@end

@implementation TipsTableViewController

@synthesize tipsArray;
@synthesize filteredTipsArray;
@synthesize tipsSearchBar;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *filename = @"background.png";
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    if (screenRect.size.height == 568.0f)
        filename = [filename stringByReplacingOccurrencesOfString:@".png" withString:@"For5.png"];
    if (screenRect.size.height == 667.0f)
        filename = [filename stringByReplacingOccurrencesOfString:@".png" withString:@"For6.png"];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:filename]];
    
    tipsArray=[NSArray arrayWithObjects:
               [Tips tipsOfCategory:@"Study" name:@"English language support"],
               [Tips tipsOfCategory:@"Study" name:@"Course Handbooks"],
               [Tips tipsOfCategory:@"Study" name:@"How to use Blackboard?"],
               [Tips tipsOfCategory:@"Study" name:@"Personal tutors"],
               [Tips tipsOfCategory:@"Study" name:@"Timetables"],
               [Tips tipsOfCategory:@"Life" name:@"Visas and advice"],
               [Tips tipsOfCategory:@"Life" name:@"Hints and tips"],
               [Tips tipsOfCategory:@"Life" name:@"Careers and employment"],
               [Tips tipsOfCategory:@"Life" name:@"Exhibitions, theatres and cheap eats"],
               [Tips tipsOfCategory:@"Life" name:@"Embassies in London"],
               [Tips tipsOfCategory:@"Finance" name:@"Check your course fees"],
               [Tips tipsOfCategory:@"Finance" name:@"Paying your fees"],
               [Tips tipsOfCategory:@"Finance" name:@"Budgeting"],
               [Tips tipsOfCategory:@"Health" name:@"Register with a doctor"],
               [Tips tipsOfCategory:@"Health" name:@"Emergencies"],
               [Tips tipsOfCategory:@"Health" name:@"Common illness"],
               [Tips tipsOfCategory:@"Health" name:@"Support for LGBT students"],
               [Tips tipsOfCategory:@"Health" name:@"Disability learning support"],
               nil];
    //Initialize the filteredTipsArray with a capacity equal to the tipsArray's capacity
    self.filteredTipsArray=[NSMutableArray arrayWithCapacity:[tipsArray count]];
    //Reload the table
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //Check to see whether the normal table or search results table is being displayed and return the count from the appropriate array
    if (tableView==self.searchDisplayController.searchResultsTableView) {
        return [filteredTipsArray count];
    } else {
        return [tipsArray count];
    }
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"TipsCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    //Create a new Tips Object
    Tips *tip=nil;
    //Check to see whether the normal table or search results table is being displayed and set the Tips object from the appropriate array
    if (tableView==self.searchDisplayController.searchResultsTableView) {
        tip=[filteredTipsArray objectAtIndex:indexPath.row];
    }else{
        tip=[tipsArray objectAtIndex:indexPath.row];
    }
    //configure the cell
    cell.textLabel.text=tip.name;
    
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    cell.textLabel.font = [UIFont systemFontOfSize:14.0];
    cell.textLabel.textColor=[UIColor blackColor];
    cell.textLabel.lineBreakMode = NSLineBreakByWordWrapping; // Pre-iOS6 use UILineBreakModeWordWrap
    cell.textLabel.numberOfLines = 0;  // 0 means no max.
    return cell;
}

#pragma mark Content Filtering

-(void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope{
    //update the filtered array based on the search text and scope.
    //remove all objects from the filtered search array
    [self.filteredTipsArray removeAllObjects];
    //Filter the array using NSPredicate
    NSPredicate *predicate=[NSPredicate predicateWithFormat:@"SELF.name contains[c] %@",searchText];
    filteredTipsArray = [NSMutableArray arrayWithArray:[tipsArray filteredArrayUsingPredicate:predicate]];
}

#pragma mark - UISearchDisplayController Delegate Methods

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString{
    //Tells the table data source to reload when text changes
    [self filterContentForSearchText:searchString scope:
     [[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:[self.searchDisplayController.searchBar selectedScopeButtonIndex]]];
    //Return Yes to cause the search result table view to be reloaded
    return YES;
}

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchScope:(NSInteger)searchOption{
    //Tells the table data source to reload when scope bar selection changes
    [self filterContentForSearchText:self.searchDisplayController.searchBar.text scope:
     [[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:searchOption]];
    //Return YES to cause the search result table view to be reloaded
    return YES;
}

#pragma mark - TabelView Delegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //Perfrom segue to tip detail
    [self performSegueWithIdentifier:@"showTipsDetail" sender:tableView];
}

#pragma mark - Segue

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"showTipsDetail"]) {
        TipsDetailViewController *tipsDetailViewController = [segue destinationViewController];
        //In order to manipulate the destination view controller, another check on which table (search or normal) is displayed is needed
        if (sender==self.searchDisplayController.searchResultsTableView) {
            NSIndexPath *indexPath = [[[self.searchDisplayController searchResultsTableView] indexPathsForSelectedRows] objectAtIndex:0];
            NSString *destinationTitle= [[filteredTipsArray objectAtIndex:[indexPath row]] name];
            [tipsDetailViewController setTitle:destinationTitle];
            tipsDetailViewController.tipsTitle=destinationTitle;
        }
        else {
            NSIndexPath *indexPath=[[[self tableView] indexPathsForSelectedRows] objectAtIndex:0];
            NSString *destinationTitle=[[tipsArray objectAtIndex:[indexPath row]] name];
            [tipsDetailViewController setTitle:destinationTitle];
            tipsDetailViewController.tipsTitle=destinationTitle;
    }
  }
}


@end
