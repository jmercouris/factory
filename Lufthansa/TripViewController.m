//
//  TripViewController.m
//  Lufthansa
//
//  Created by John Mercouris on 7/4/15.
//  Copyright (c) 2015 Door To Door. All rights reserved.
//

#import "TripViewController.h"
#import "ColorGenerator.h"
#import "SimpleTableCell.h"

@interface TripViewController ()
@property (strong, nonatomic) IBOutlet UIView *headerView;

@end

@implementation TripViewController
NSArray *tableData;
NSArray *thumbnails;
NSArray *prepTime;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_headerView setBackgroundColor:([ColorGenerator colorWithHexString:@"163876" ])];
    
    // Initialize table data
    tableData = [NSArray arrayWithObjects:@"Egg Benedict", nil];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 115;
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
    
    // indexPath.row ( current index )
    cell.timeLabel.text = @"5:00am - 9:00am";
    cell.priceLabel.text = @"lol";
    cell.prepTimeLabel.text = @"haha";
    //cell.prepTimeLabel.text = [prepTime objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"didSelectRowAtIndexPath");
    /*UIAlertView *messageAlert = [[UIAlertView alloc]
     initWithTitle:@"Row Selected" message:@"You've selected a row" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];*/
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"willSelectRowAtIndexPath");
    if (indexPath.row == 0) {
        return nil;
    }
    
    return indexPath;
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
