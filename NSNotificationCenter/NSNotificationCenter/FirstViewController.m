//
//  FirstViewController.m
//  NSNotificationCenter
//
//  Created by Justine Herman on 11/14/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "FirstViewController.h"


@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UIStepper *stepper;

- (void)stepperIncreasedWithNotification:(NSNotificationCenter *)notification;


@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (IBAction)stepperTapped:(UIStepper *)sender
{
    NSNumber *stepperValue = [[NSNumber alloc] initWithDouble:sender.value];
    
    
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    NSDictionary *userInfo = @{@"stepperValue" : stepperValue};
    
    [center postNotificationName:@"increaseStepper" object:self userInfo:userInfo];
    
}


@end
