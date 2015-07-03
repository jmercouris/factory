//
//  ColorGenerator.h
//  Lufthansa
//
//  Created by John Mercouris on 7/3/15.
//  Copyright (c) 2015 Door To Door. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface ColorGenerator : NSObject
+(UIColor*)colorWithHexString:(NSString*)hex;

@end
