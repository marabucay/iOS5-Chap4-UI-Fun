//
//  BIDViewController.m
//  Control Fun
//
//  Created by Maria Alice C. Lim on 9/11/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "BIDViewController.h"

@implementation BIDViewController
@synthesize nameField;
@synthesize numberField;
@synthesize sliderLabel;
@synthesize leftSwitch;
@synthesize rightSwitch;
@synthesize doSomethingButton;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setNameField:nil];
    [self setNumberField:nil];
    [self setSliderLabel:nil];
    [self setLeftSwitch:nil];
    [self setRightSwitch:nil];
    [self setDoSomethingButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (IBAction)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}
- (IBAction)backgroundTap:(id)sender{
    [nameField resignFirstResponder];
    [numberField resignFirstResponder];
}

- (IBAction)sliderChanged:(id)sender {
   UISlider *slider = (UISlider *)sender;
    int progressAsInt = (int)roundf(slider.value);
    sliderLabel.text = [NSString stringWithFormat:@"%d", progressAsInt];
}

- (IBAction)switchChanged:(id)sender {
    UISwitch *whichSwitch = (UISwitch *)sender;
    BOOL setting = whichSwitch.isOn;
    [leftSwitch setOn:setting animated:YES];
    [rightSwitch setOn:setting animated:YES];
}

- (IBAction)toggleControls:(id)sender {
    //o == switches index
    if ([sender selectedSegmentIndex] ==0)
    {
        leftSwitch.hidden = NO;
        rightSwitch.hidden = NO;
        doSomethingButton.hidden=YES;
    }
    else{
        leftSwitch.hidden = YES;
        rightSwitch.hidden=YES;
        doSomethingButton.hidden=NO;
    }
        
}
- (IBAction)buttonPressed:(id)sender {
}

@end
