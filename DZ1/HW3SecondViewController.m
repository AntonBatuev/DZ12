//
//  HW3SecondViewController.m
//  DZ1
//
//  Created by Admin on 11/16/13.
//  Copyright (c) 2013 MSU. All rights reserved.
//

#import "HW3SecondViewController.h"
//#import "HW3FirstViewController.h"

@interface HW3SecondViewController ()

@end

@implementation HW3SecondViewController
@synthesize label,imgView,bigButton,numberButton;
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
    [bigButton setTitle:numberButton forState:UIControlStateNormal];
    
    [self.navigationController setNavigationBarHidden:YES];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushbutton:(id)sender
{
    NSLog(@"string =%@",numberButton);
    if ([numberButton isEqualToString:@"10"]) {
    
        NSLog(@"10");
    //[UIView beginAnimations:nil context:nil];
    //[UIView setAnimationDuration:0.5];
    //[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
   // [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.navigationController.view  cache:NO];
    [self.navigationController popViewControllerAnimated:YES];
    //[UIView commitAnimations];
    }
    if([numberButton isEqualToString:@"11"])
    {
        NSLog(@"11");
       // [self.view   ];
//        [UIView beginAnimations:nil context:nil];
//        [UIView setAnimationDuration:0.5];
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        [UIView setAnimationTransition:UIViewAnimationTransitionNone forView:self.navigationController.view  cache:NO];
        //[self.navigationController popViewControllerAnimated:YES];
//        [UIView commitAnimations];
    }

}

@end
