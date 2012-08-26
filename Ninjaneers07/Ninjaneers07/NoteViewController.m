//
//  NoteViewController.m
//  Ninjaneers07
//
//  Created by Beth Bradshaw on 8/25/12.
//  Copyright (c) 2012 hackathon.2012.team07. All rights reserved.
//

#import "NoteViewController.h"
//#import "NinjaData.h"

@interface NoteViewController ()
@end

@implementation NoteViewController

@synthesize noteField = _noteField;
//@synthesize data = _data;

- (IBAction)saveNoteAction {
  //NSLog(@"%@", self.noteField.text);
  
  // TODO:
  // save the note somewhere
  //NSDate *today = [NSDate date];
  //NinjaData *data  = [[NinjaData alloc] initWithNote:self.noteField.text datecaptured:today];
  //self.data = data;
  
  [self.navigationController popViewControllerAnimated:YES];

}

- (IBAction)noteFieldReturn:(id)sender
{
  [sender resignFirstResponder];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
  [self setNoteField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
  } else {
    return YES;
  }
}

@end
