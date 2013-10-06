//
//  ViewController.m
//  TemperatureConverter
//
//  Created by Felix Santiago on 10/4/13.
//  Copyright (c) 2013 Felix Santiago. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (void)updateValues;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.temperatureValue.adjustsFontSizeToFitWidth = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)convert:(id)sender {
    [self updateValues];
}

- (IBAction)dismissKeyboard:(id)sender {
    [self.view endEditing:YES];
}


- (void)updateValues {
    float newTemp = 0.0;
    float input = [self.inputValue.text floatValue];
    if (self.inputUnit.selectedSegmentIndex == 0) {
        // Input is celsius, want fahrenheit
        newTemp = input * 9/5 + 32;
        self.temperatureUnit.text = @"ºF";
    } else if (self.inputUnit.selectedSegmentIndex == 1) {
        // Input is fahrenheit, want celsius
        newTemp = (input - 32) * 5/9;
        self.temperatureUnit.text = @"ºC";
    }
    self.temperatureValue.text = [NSString stringWithFormat:@"%0.1f", newTemp];

    [self.view endEditing:YES];
}

@end
