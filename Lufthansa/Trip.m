//
//  Trip.m
//  Lufthansa
//
//  Created by John Mercouris on 7/4/15.
//  Copyright (c) 2015 Door To Door. All rights reserved.
//

#import "Trip.h"

@implementation Trip

@synthesize price = _price;
@synthesize departureTime = _departureTime;
@synthesize arrivalTime = _arrivalTime;
@synthesize totalTripInformation = _totalTripInformation;


// Default Constructor
- (id)init
{
    if( self = [super init] )
    {
        // Initialize your object here
    }
    
    return self;
}


@end
