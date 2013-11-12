//
//  ThirdViewController.m
//  DZ1
//
//  Created by Admin on 11/8/13.
//  Copyright (c) 2013 MSU. All rights reserved.
//

#import "ThirdViewController.h"


@interface ThirdViewController ()

@end

@implementation ThirdViewController
@synthesize textinTextView;
@synthesize mytextView;
@synthesize beginButton,endButton;
@synthesize helpString;
@synthesize addOrEdit;
@synthesize selectedRow;

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
    self.navigationController.delegate=self;
    UIBarButtonItem *cancel_button = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(push_cancel)];
    self.navigationItem.leftBarButtonItem = cancel_button;
  //  self.navigationItem.
    beginButton.layer.cornerRadius = 50;
    beginButton.clipsToBounds  = YES;
    
    endButton.layer.cornerRadius = 50; // this value vary as per your desire
    endButton.clipsToBounds = YES;
    
    NSLog(@"helpString =  %@",addOrEdit);
   if([addOrEdit isEqualToString:@"EDIT"])
    {
         [endButton setTitle:@"Сохранить" forState:UIControlStateNormal];
         [beginButton setHidden:YES];
        mytextView.text = helpString;
        //beginButton.textInputContextIdentifier = @"save";
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)push_cancel
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)pushAddStart:(id)sender {
//    SecondViewController * prevCtrler = [viewCtrlers objectAtIndex:[viewCtrlers count]-2];
//    
//    [prevCtrler.strings addObject:textinTextView.text];
//    
    NSLog(@"СТАРТ");
 //   textinTextView = mytextView.text;
    NSString * mystring = mytextView.text;
    if ([mystring isEqualToString:@""])
    {
        
        UIAlertView *simpleAlert = [[UIAlertView alloc] initWithTitle:@"Введите строку"
                                                              message:@""
                                                             delegate:self
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles:nil];
        [simpleAlert show];
    }
    else
    {
        NSLog(@"string123 = ",mystring);
        [self.delegate addIt:self string:mystring row:-1];
        [self.navigationController popViewControllerAnimated:YES];
    }
}
- (IBAction)pushAddEnd:(id)sender {
    NSString * mystring = mytextView.text;
    
    if ([addOrEdit isEqualToString:@"EDIT"])
    {
        NSLog(@"selected row = %d",selectedRow);
        [self.delegate editRow:self newString:mystring row:selectedRow];
        [self.navigationController popViewControllerAnimated:YES];

    }
    else
    {
        
    
        if ([mystring isEqualToString:@""])
        {
        
            UIAlertView *simpleAlert = [[UIAlertView alloc] initWithTitle:@"Введите строку"
                                                                  message:@""
                                                               delegate:self
                                                        cancelButtonTitle:@"OK"
                                                        otherButtonTitles:nil];
            [simpleAlert show];
        }
        else
        {
            [self.delegate addIt:self string:mystring row:-2];
            [self.navigationController popViewControllerAnimated:YES];
        }
    }
}



-(IBAction)backgroundTouched:(id)sender {
    [mytextView resignFirstResponder];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    
    return YES;
}
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
 
}

-(void)keyboardWillHide
{
    
    NSLog(@"keyboard hide");
}



@end
