//
//  SSDirectionsViewController.m
//  Salmon
//
//  Created by Jabari Bell on 5/29/13.
//  Copyright (c) 2013 Salmon. All rights reserved.
//

#import "SSDirectionsViewController.h"
#import "SSData.h"
#import "SSDirectionsCell.h"
#import "SSColorHelper.h"

@interface SSDirectionsViewController ()

@end

@implementation SSDirectionsViewController {
    UITableView *tableView;
    NSMutableArray *cells;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [SSColorHelper salmonMediumGray];
    
    cells = [NSMutableArray array];
    
    for(int i = 0; i <= [[SSData shared] directionsData].count; ++i) {
        SSDirectionsCell *cell = [[SSDirectionsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"menu-cell"];
        [cells insertObject:cell atIndex:i];
    }
    
    UIView *lineBar = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width - 55, 0, 10, self.view.frame.size.height)];
    lineBar.backgroundColor = [SSColorHelper salmonSalmon];
    [self.view addSubview:lineBar];
    
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    tableView.backgroundColor = [UIColor clearColor];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:tableView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[SSData shared] directionsData].count;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)leTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    SSDirectionsCell *cell = [cells objectAtIndex:indexPath.row];
    if (cell == nil) {
        cell = [[SSDirectionsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        [cells insertObject:cell atIndex:indexPath.row];
    }
    [cell setTitle:[[[SSData shared] directionsData] objectAtIndex:indexPath.row]];
    return cell;
}


@end
