//
//  RestaurantTableViewController.m
//  InWestminster
//
//  Created by leihe on 11/07/2015.
//  Copyright (c) 2015 leihe. All rights reserved.
//

#import "RestaurantTableViewController.h"
#import "RestaurantCell.h"
#import "RestaurantDetailViewController.h"
#import "RestaurantMapViewController.h"

@interface RestaurantTableViewController ()

@end

@implementation RestaurantTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    _Title = @[@"Kitchen Table",
               @"Archipelago",
               @"Tsunami",
               @"Portland Café",
               @"Trattoria Montebianco",];
    _AddressLineOne = @[@"70 Charlotte Street, London",
                        @"53 Cleveland Street, London",
                        @"93 Charlotte Street, London",
                        @"132 Great Portland Street",
                        @"86 Cleveland Street, London",];
    _AddressLineTwo = @[@"W1T 4QG",
                        @"W1T 4JJ",
                        @"W1T 4PY",
                        @"W1W 6PU",
                        @"W1T 6NQ",];
    _RatingImages =@[@"5StarsSmall.png",
                     @"4StarsSmall.png",
                     @"4StarsSmall.png",
                     @"4StarsSmall.png",
                     @"3StarsSmall.png",];
    _RatingText=@[@"4.8",
                  @"4.2",
                  @"4.1",
                  @"4.0",
                  @"3.7",];
    _DetailImages = @[@"restaurantKitchenTable.png",
                      @"restaurantArchipelago.png",
                      @"restaurantTsunami.png",
                      @"restaurantPortlandCafé.png",
                      @"restaurantTrattoriaMontebianco.png",];
    _Description = @[@"\"I am however much more impressed by the restaurants opened by fresh new faces like Tom Sellers at Restaurant Story and last Friday, I was lucky enough to eat the best meal I've had this year so far at the Kitchen Table. Read more from: http://www.tripadvisor.com.\"\n\nYee Gan O., London",
                     @"\"On my trip to London, I wanted to try some things, I can't get at home. When I googled, I found this place The service is excellent. They tend to your hand and feet. I was amazed by the little pill that turns into a towel when it is dropped into water. The atmosphaere and decorations are very gorgeous and exotic. They offer vegetarian options as well, so don't worry. Read more from: http://www.tripadvisor.com.\"\n\nCornelia B. Vienna, Australia",
                     @"\"Really good sushi. Kind of messed up our order and were slow. The mini volcano roll is a California Roll absolutely doused in some mixture of sauces. It tasted great but felt like eating melted ice cream with a California Roll underneath it. Read more from: http://www.tripadvisor.com.\"\n\nManhattan, United States",
                     @"\"You must try the peri peri chicken melt, you can pick it up in a meal deal with some crisps and a can of drink for a fiver. Grate value. Plus the customer service is second to none, I'm always made to feel welcome with a warm greeting. If you're hungry and in the area make sure you stop in here because I guarantee you won't be disappointed. Read more from: http://www.tripadvisor.com.\"\n\nQype User, London",
                     @"\"Food is no-frills Italian fare, served up with a warm smile and hot from the kitchen located at the heart of this small restaurant where you can watch your server running in and out and helping to happily prepare your food. Read more from: http://www.tripadvisor.com.\"\n\nJennifer F., Pasadena, United States",];
    _Review = @[@"278 Reviews on TripAdvisor",
                @"198 Reviews on TripAdvisor",
                @"175 Reviews on TripAdvisor",
                @"205 Reviews on TripAdvisor",
                @"101 Reviews on TripAdvisor",];
    _Cuisine = @[@"Traditional American Restaurant",
                 @"Australian Restaurant",
                 @"Japanese Restaurant",
                 @"Takeaway & Fast Food",
                 @"Italian Restaurant",];
    _Telephone = @[@"T: 020 7637 7770",
                   @"T: 020 7383 3346",
                   @"T: 020 7637 0050",
                   @"T: 020 7580 7510",
                   @"T: 020 7387 2375",];

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
    static NSString *CellIdentifier= @"RestaurantCell";
    RestaurantCell *cell= [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    NSInteger row = [indexPath row];
    
    cell.titleLabel.text=_Title[row];
    cell.addressOneLabel.text=_AddressLineOne[row];
    cell.addressTwoLabel.text=_AddressLineTwo[row];
    cell.ratingLabel.text=_RatingText[row];
    cell.ratingImage.image = [UIImage imageNamed:_RatingImages[row]];
    //cell.backgroundColor = [UIColor clearColor];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"showRestaurantDetails"]) {
        RestaurantDetailViewController *restaurantDetailViewController=[segue destinationViewController];
        NSIndexPath *restaurantIndexPath=[self.tableView indexPathForSelectedRow];
        NSInteger row= [restaurantIndexPath row];
        restaurantDetailViewController.RestaurantDetailModal = @[_Title[row],_AddressLineOne[row],_AddressLineTwo[row],_RatingText[row],_RatingImages[row],_DetailImages[row],_Description[row],_Review[row],_Cuisine[row],_Telephone[row]];
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
