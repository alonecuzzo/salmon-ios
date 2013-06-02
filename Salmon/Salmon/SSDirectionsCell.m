//
//  SSDirectionsCell.m
//  Salmon
//
//  Created by Jabari Bell on 5/29/13.
//  Copyright (c) 2013 Salmon. All rights reserved.
//

#import "SSDirectionsCell.h"
#import "SSFontHelper.h"
#import "SSColorHelper.h"

@implementation SSDirectionsCell {
    UILabel *titleLabel;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
       
        titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.contentView.frame.origin.x - 80, self.contentView.frame.origin.y, self.contentView.frame.size.width, self.contentView.frame.size.height)];
        titleLabel.font = [SSFontHelper getFont:SSPTSansRegular withSize:SSFontSizeMedium];
        titleLabel.backgroundColor = [UIColor clearColor];
        titleLabel.text = @"LOLZ";
        titleLabel.textAlignment = NSTextAlignmentRight;
        titleLabel.textColor = [SSColorHelper salmonSalmon];
        [self.viewForBaselineLayout addSubview:titleLabel];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setTitle:(NSString *)title
{
    titleLabel.text = title;
}

@end
