//
//  SSData.m
//  Salmon
//
//  Created by Jabari Bell on 5/29/13.
//  Copyright (c) 2013 Salmon. All rights reserved.
//

#import "SSData.h"

@implementation SSData

-(id)init
{
    if(self = [super init]){
        self.masterData = [NSArray arrayWithObjects:@"SSDirections", nil];
        self.directionsData = [NSArray arrayWithObjects:
                                    @"818 Marcy Ave.",
                                    @"A/C Train Station",
                                    @"59th St. Station",
                                    @"Central Park North",
                                    @"837 W 72nd Street",
                               nil];
    }
    
    return self;
}

+ (SSData *)shared {
    static SSData *shared = nil;
    if (!shared)
        shared = [[super allocWithZone:nil] init];
    return shared;
}

@end
