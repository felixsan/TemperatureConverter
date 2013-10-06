//
//  ViewController.h
//  TemperatureConverter
//
//  Created by Felix Santiago on 10/4/13.
//  Copyright (c) 2013 Felix Santiago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *temperatureValue;
@property (weak, nonatomic) IBOutlet UILabel *temperatureUnit;

@property (weak, nonatomic) IBOutlet UITextField *inputValue;
@property (weak, nonatomic) IBOutlet UISegmentedControl *inputUnit;

@property (weak, nonatomic) IBOutlet UIButton *convertButton;

- (IBAction)convert:(id)sender;
- (IBAction)dismissKeyboard:(id)sender;
- (void)updateValues;

@end
