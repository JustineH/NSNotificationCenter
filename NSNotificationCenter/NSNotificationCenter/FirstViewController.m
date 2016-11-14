//
//  FirstViewController.m
//  NSNotificationCenter
//
//  Created by Justine Herman on 11/14/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)stepperTapped:(UIStepper *)sender {
    
    
}


@end
