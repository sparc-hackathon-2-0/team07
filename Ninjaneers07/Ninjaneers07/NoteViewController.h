//
//  NoteViewController.h
//  Ninjaneers07
//
//  Created by Beth Bradshaw on 8/25/12.
//  Copyright (c) 2012 hackathon.2012.team07. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoteViewController : UIViewController {
  UITextField *noteField;
}

@property (strong, nonatomic) IBOutlet UITextField *noteField;

- (IBAction)noteFieldReturn:(id)sender;

@end
