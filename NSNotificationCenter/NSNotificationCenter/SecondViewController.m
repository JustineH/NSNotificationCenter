//
//  SecondViewController.m
//  NSNotificationCenter
//
//  Created by Justine Herman on 11/14/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(stepperIncreasedWithNotification:)
                                                 name:@"increaseStepper"
                                               object:nil];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)stepperIncreasedWithNotification:(NSNotification *)notification
{
    self.countLabel.text = [notification.userInfo[@"stepperValue"] description];
    NSLog(@"%@", notification.userInfo[@"stepperValue"]);
    
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end

