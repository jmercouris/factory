//
//  TripViewController.h
//  Lufthansa
//
//  Created by John Mercouris on 7/4/15.
//  Copyright (c) 2015 Door To Door. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Trip.h"
#import "DataAccessor.h"

@interface TripViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) QueryPacket *queryPacket;

@end
