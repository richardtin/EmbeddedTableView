//
//  ListTableViewCell.m
//  EmbeddedTableView
//
//  Created by Richard Ting on 8/1/14.
//  Copyright (c) 2014 Richard Ting. All rights reserved.
//

#import "ListTableViewCell.h"

@implementation ListTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - Table view delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 25;
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
    return [self.info count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InfoTableViewCell" forIndexPath:indexPath];

    // Configure the cell...
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"Latitude";
            cell.detailTextLabel.text = [self.info objectForKey:@"Latitude"];
            break;

        case 1:
            cell.textLabel.text = @"Longitude";
            cell.detailTextLabel.text = [self.info objectForKey:@"Longitude"];
            break;

        case 2:
            cell.textLabel.text = @"Speed";
            cell.detailTextLabel.text = [self.info objectForKey:@"Speed"];
            break;

        case 3:
            cell.textLabel.text = @"Altitude";
            cell.detailTextLabel.text = [self.info objectForKey:@"Altitude"];
            break;

        case 4:
            cell.textLabel.text = @"Date";
            cell.detailTextLabel.text = [self.info objectForKey:@"Date"];
            break;

        case 5:
            cell.textLabel.text = @"Time";
            cell.detailTextLabel.text = [self.info objectForKey:@"Time"];
            break;

        case 6:
            cell.textLabel.text = @"Course";
            cell.detailTextLabel.text = [self.info objectForKey:@"Course"];
            break;

        case 7:
            cell.textLabel.text = @"Accuracy";
            cell.detailTextLabel.text = [self.info objectForKey:@"Accuracy"];
            break;
            
        default:
            break;
    }
    
    return cell;
}

@end
