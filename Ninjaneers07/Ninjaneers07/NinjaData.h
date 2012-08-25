//
//  NinjaData.h
//  Ninjaneers07
//
//  Created by Beth Bradshaw on 8/25/12.
//  Copyright (c) 2012 hackathon.2012.team07. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NinjaData : NSObject <NSCoding>

@property (strong) NSString *note;
@property (assign) NSDate *noteDate;

- (id)initWithNote:(NSString *)note datecaptured:(NSDate *)noteDate;

@end
