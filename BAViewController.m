//
//  BAViewController.m
//  DZ1
//
//  Created by Admin on 11/1/13.
//  Copyright (c) 2013 MSU. All rights reserved.
//

#import "BAViewController.h"

@interface BAViewController ()

@end

@implementation BAViewController
@synthesize  label;
@synthesize button;

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
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"iphone-5-Wallpapers.jpg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    label.layer.cornerRadius = 35;
    label.clipsToBounds  = YES;
    
    button.layer.cornerRadius = 20; // this value vary as per your desire
    button.clipsToBounds = YES;
    
    [[button layer] setBorderWidth:3.0f];
    [[button layer] setBorderColor:[UIColor greenColor].CGColor];
    
    [[label layer] setBorderWidth:5.0f];
    [[label layer] setBorderColor:[UIColor greenColor].CGColor];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushbutton:(id)sender {
    count++;
    label.text = [NSString stringWithFormat:@"%d",count];
    
}
@end