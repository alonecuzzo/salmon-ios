//
//  SSFontHelper.h
//  Salmon
//
//  Created by Jabari Bell on 5/29/13.
//  Copyright (c) 2013 Salmon. All rights reserved.
//


enum {
    SSPTSansRegular                   = 0
};
typedef NSInteger SSFont;

enum {
    SSFontSizeSmall                   = 12,
    SSFontSizeMedium                  = 24,
    SSFontSizeLarge                   = 36
};
typedef NSInteger SSFontSize;

#import <Foundation/Foundation.h>

@interface SSFontHelper : NSObject

+ (UIFont*)getFont:(SSFont)font withSize:(SSFontSize)size;

@end
