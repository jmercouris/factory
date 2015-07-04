//
//  QueryPacket.h
//  Lufthansa
//
//  Created by John Mercouris on 7/4/15.
//  Copyright (c) 2015 Door To Door. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QueryPacket : NSObject


@property NSString *departureAddress;
@property NSString *arrivalAddress;
@property NSString *date;
@property NSString *luggageCount;


@end
