//
//  DataAccessor.m
//  Lufthansa
//
//  Created by John Mercouris on 7/4/15.
//  Copyright (c) 2015 Door To Door. All rights reserved.
//

#import "DataAccessor.h"
@implementation DataAccessor

+(NSArray*)getData:(QueryPacket*)data
{
    
    // https://factoryhackathon1.herokuapp.com/routes.json?origin_address=Rheinsberger%20Str.%2077,%20Berlin&destination_address=Platzl%209,%20Munich&time=2015-07-06T08:42%20CEST&pieces_of_luggage=1
    NSString *urlString = [[NSString stringWithFormat:@"https://factoryhackathon1.herokuapp.com/routes.json?origin_address=%@&destination_address=%@&time=%@&pieces_of_luggage=%@", data.departureAddress, data.arrivalAddress, data.date, data.luggageCount] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:urlString]];

    NSData *theData = [NSURLConnection sendSynchronousRequest:request
                                            returningResponse:nil
                                                        error:nil];
    
    NSLog(@"%@", urlString);

    
    NSDictionary *newJSON = [NSJSONSerialization JSONObjectWithData:theData
                                                            options:0
                                                              error:nil];

    NSLog(@"Sync JSON: %@", newJSON);
    
    return 0;
}

@end
