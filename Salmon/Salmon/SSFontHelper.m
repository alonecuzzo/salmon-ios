//
//  SSFontHelper.m
//  Salmon
//
//  Created by Jabari Bell on 5/29/13.
//  Copyright (c) 2013 Salmon. All rights reserved.
//

#import "SSFontHelper.h"

@implementation SSFontHelper

+ (UIFont*)getFont:(SSFont)font withSize:(SSFontSize)size
{
    return [UIFont fontWithName:[SSFontHelper getFontString:font] size:size];
}

+ (NSString*)getFontString:(SSFont)font {
    NSString *fontName;
    switch (font) {
        case 0:
            fontName = @"PTC57F";
            break;
            
        default:
            break;
    }
    return fontName;
}

@end
