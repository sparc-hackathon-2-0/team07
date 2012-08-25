//
//  NoteViewController.m
//  Ninjaneers07
//
//  Created by Beth Bradshaw on 8/25/12.
//  Copyright (c) 2012 hackathon.2012.team07. All rights reserved.
//

#import "NoteViewController.h"

@interface NoteViewController ()
@property (nonatomic, weak) NSString *noteString;
@end

@implementation NoteViewController

@synthesize noteString = _noteString;

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
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
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
