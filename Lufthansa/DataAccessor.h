//
//  DataAccessor.h
//  Lufthansa
//
//  Created by John Mercouris on 7/4/15.
//  Copyright (c) 2015 Door To Door. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QueryPacket.h"

@interface DataAccessor : NSObject
+(NSArray*)getData:(QueryPacket*)query;

@end
