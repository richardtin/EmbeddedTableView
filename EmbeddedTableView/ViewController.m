//
//  ViewController.m
//  EmbeddedTableView
//
//  Created by Richard Ting on 8/1/14.
//  Copyright (c) 2014 Richard Ting. All rights reserved.
//

#import "ViewController.h"
#import "ListTableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *listTableView;
@property (strong, nonatomic) NSArray *listDataArray;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.listTableView.delegate = self;
    self.listTableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)listDataArray
{
    if (!_listDataArray) {
        NSDictionary *one = [[NSDictionary alloc] initWithObjectsAndKeys:
                @"13.861970", @"Latitude",
                @"100.504250", @"Longitude",
                @"50 kph", @"Speed",
                @"1000 meters", @"Altitude",
                @"12/04/2010", @"Date",
                @"05:45 PM", @"Time",
                @"North west", @"Course",
                @"+/- 10 meters", @"Accuracy", nil];
        NSDictionary *two = [[NSDictionary alloc] initWithObjectsAndKeys:
                @"13.862470", @"Latitude",
                @"100.501389", @"Longitude",
                @"60 kph", @"Speed",
                @"1050 meters", @"Altitude",
                @"12/04/2010", @"Date",
                @"06:15 PM", @"Time",
                @"North", @"Course",
                @"+/- 10 meters", @"Accuracy", nil];
        NSDictionary *three = [[NSDictionary alloc] initWithObjectsAndKeys:
                @"13.861970", @"Latitude",
                @"100.504250", @"Longitude",
                @"70 kph", @"Speed",
                @"1000 meters", @"Altitude",
                @"12/04/2010", @"Date",
                @"06:35 PM", @"Time",
                @"South", @"Course",
                @"+/- 10 meters", @"Accuracy", nil];
        NSDictionary *four = [[NSDictionary alloc] initWithObjectsAndKeys:
                @"13.861970", @"Latitude",
                @"100.504250", @"Longitude",
                @"50 kph", @"Speed",
                @"1050 meters", @"Altitude",
                @"12/04/2010", @"Date",
                @"06:55 PM", @"Time",
                @"South West", @"Course",
                @"+/- 10 meters", @"Accuracy", nil];

        _listDataArray = [[NSArray alloc] initWithObjects:one, two, three, four, nil];
    }
    return _listDataArray;
}

#pragma mark - Table view delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.listDataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListTableViewCell" forIndexPath:indexPath];

    if ([cell isKindOfClass:[ListTableViewCell class]]) {
        ListTableViewCell *listCell = (ListTableViewCell *)cell;
        listCell.info = [self.listDataArray objectAtIndex:indexPath.row];
    }

    return cell;
}

@end
