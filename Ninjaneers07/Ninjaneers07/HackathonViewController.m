//
//  HackathonViewController.m
//  Ninjaneers07
//
//  Created by AdamMack on 8/25/12.
//  Copyright (c) 2012 hackathon.2012.team07. All rights reserved.
//

#import "HackathonViewController.h"

@interface HackathonViewController ()

@end

@implementation HackathonViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
}

//Button Actions
- (IBAction)PhotoAction:(id)sender {
}

- (IBAction)NoteAction:(id)sender {
}

- (IBAction)VoiceAction:(id)sender {
}

- (IBAction)TimelineAction:(id)sender {
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
