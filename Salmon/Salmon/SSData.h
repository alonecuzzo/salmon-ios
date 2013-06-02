//
//  SSData.h
//  Salmon
//
//  Created by Jabari Bell on 5/29/13.
//  Copyright (c) 2013 Salmon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SSData : NSObject

@property(nonatomic, strong) NSArray *masterData;
@property(nonatomic, strong) NSArray *directionsData;

+ (SSData *)shared;

@end
