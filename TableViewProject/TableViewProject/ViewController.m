//
//  ViewController.m
//  TableViewProject
//
//  Created by Vidyashri on 05/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTableCell.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (nonatomic, strong) IBOutlet UITableView *tableView;
@end

@implementation ViewController

NSMutableArray *tableData;
NSMutableArray *thumbnails;
@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    tableData = [NSMutableArray arrayWithObjects:@"Linkin Park",@"The Chainsmokers",@"Queen",@"Imagine Dragon", nil];
    thumbnails = [NSMutableArray arrayWithObjects:@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg", nil];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.nameLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    cell.prepTimeLabel.text = @"Time";
    
    return cell;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSString *str = tableData[indexPath.row];
////    UIAlertView *messageAlert = [[UIAlertView alloc]
////                                 initWithTitle:@"Row Selected" message:str delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
////
////    // Display Alert Message
////    [messageAlert show];
//
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    cell.accessoryType = UITableViewCellAccessoryCheckmark;
//
//}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableData removeObjectAtIndex:indexPath.row];
    [tableView reloadData];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"navigateToDetailView"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SecondViewController *destViewController = segue.destinationViewController;
        destViewController.recipeName = [tableData objectAtIndex:indexPath.row];
        destViewController.musicImageString = [thumbnails objectAtIndex:indexPath.row];
    }
}

@end
