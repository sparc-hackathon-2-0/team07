//
//  NoteViewController.h
//  Ninjaneers07
//
//  Created by Beth Bradshaw on 8/25/12.
//  Copyright (c) 2012 hackathon.2012.team07. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NinjaData.h"

@interface NoteViewController : UIViewController {
  UITextField *noteField;
}

@property (strong, nonatomic) IBOutlet UITextField *noteField;
@property (strong) NinjaData *data;

- (IBAction)noteFieldReturn:(id)sender;

@end
