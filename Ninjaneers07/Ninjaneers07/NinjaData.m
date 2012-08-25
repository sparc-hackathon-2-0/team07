//
//  NinjaData.m
//  Ninjaneers07
//
//  Created by Beth Bradshaw on 8/25/12.
//  Copyright (c) 2012 hackathon.2012.team07. All rights reserved.
//

#import "NinjaData.h"

@implementation NinjaData

@synthesize noteDate = _noteDate;
@synthesize note = _note;

- (id)initWithNote:(NSString *)note datecaptured:(NSDate *)noteDate {
  if ((self = [super init])) {
    self.note = note;
    self.noteDate = noteDate;
  }
  return self;
}

#pragma mark NSCoding

#define kNoteKey      @"Note"
#define kNoteDateKey  @"NoteDate"

- (void) encodeWithCoder:(NSCoder *)encoder {
  [encoder encodeObject:_note forKey:kNoteKey];
  [encoder encodeObject:_noteDate forKey:kNoteDateKey];
}

- (id)initWithCoder:(NSCoder *)decoder {
  NSString *note = [decoder decodeObjectForKey:kNoteKey];
  NSDate *noteDate = [decoder decodeObjectForKey:kNoteDateKey];
  
  return [self initWithNote:note datecaptured:noteDate];
}

@end
