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
@synthesize keyboardString;

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
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWasShown:)
                                                 name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification object:nil];
    self.navigationController.delegate=self;
    UIBarButtonItem *cancel_button = [[UIBarButtonItem alloc]initWithTitle:@"Отменить" style:UIBarButtonItemStylePlain target:self action:@selector(push_cancel)];
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
         [endButton setHidden:YES];
        UIBarButtonItem *save = [[UIBarButtonItem alloc]initWithTitle:@"Cохранить" style:UIBarButtonItemStylePlain target:self action:@selector(pushSave)];
       // save.title = @"Cохранить";
        self.navigationItem.rightBarButtonItem.title= @"Cохранить";
        self.navigationItem.rightBarButtonItem = save;
       //// mytextView.frame = CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
        mytextView.text = helpString;
        //beginButton.textInputContextIdentifier = @"save";
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pushSave
{
    NSString * mystring = mytextView.text;
    [self.delegate editRow:self newString:mystring row:selectedRow];
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)push_cancel
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)pushAddStart:(id)sender {
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
-(void)viewWillLayoutSubviews
{
    if (UIInterfaceOrientationIsLandscape(self.interfaceOrientation))
    {
        endButton.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.width-50 ,[UIScreen mainScreen].bounds.size.height, 50);
        beginButton.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.width-102, [UIScreen mainScreen].bounds.size.height, 50);
        
        NSLog(@"Landscape");
        beginButton.layer.cornerRadius = 20;
        beginButton.clipsToBounds  = YES;
        
        endButton.layer.cornerRadius = 20; // this value vary as per your desire
        endButton.clipsToBounds = YES;
        
        if ([addOrEdit isEqualToString:@"EDIT"]){
            if ([keyboardString isEqualToString:@"KeyBoardHide" ]) {
                
            
            mytextView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width);
            }
            }
        else    mytextView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width-100-3);

        

    }
    else
    {
        endButton.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height-100, [UIScreen mainScreen].bounds.size.width, 100);
      beginButton.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height-202, [UIScreen mainScreen].bounds.size.width, 100);
        beginButton.layer.cornerRadius = 50;
        beginButton.clipsToBounds  = YES;
        
        endButton.layer.cornerRadius = 50; // this value vary as per your desire
        endButton.clipsToBounds = YES;
       
        
        if ([addOrEdit isEqualToString:@"EDIT"]){
        mytextView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
        }
        else    mytextView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-200-3);
        
        

        NSLog(@"Portait");
    }
}
// Called when the UIKeyboardDidShowNotification is sent.
- (void)keyboardWasShown:(NSNotification*)aNotification
{
    if ([addOrEdit isEqualToString:@"EDIT"])
    {
        if (UIInterfaceOrientationIsLandscape(self.interfaceOrientation))
        {
            NSLog(@"EDIT+LAND");
           // mytextView.frame = CG
            mytextView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width-162);
        }
    }
keyboardString  = @"KeyBoardShow";
    NSLog(@"KeyBoardShown");
}
- (void)keyboardWillBeHidden:(NSNotification*)aNotification
{
    if ([addOrEdit isEqualToString:@"EDIT"]){
        mytextView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width);
    }
    NSLog(@"KeyBoardHidden");
    keyboardString  = @"KeyBoardHide";
}
@end
