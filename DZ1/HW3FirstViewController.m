//
//  HW3FirstViewController.m
//  DZ1
//
//  Created by Admin on 11/15/13.
//  Copyright (c) 2013 MSU. All rights reserved.
//

#import "HW3FirstViewController.h"
//#import "HW3SecondViewController.h"


@interface HW3FirstViewController ()

@end

@implementation HW3FirstViewController

@synthesize button1,button2,button3,button4,button5,button6,button7,button8,button9,button10,button11;

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
    [self.navigationController setNavigationBarHidden:YES];
   // CGRect frameBtn = CGRectMake(160.0f, 150.0f, 144.0f, 42.0f);
    //[button6 setTitle:@"1" forState:UIControlStateNormal];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)push1:(id)sender
{
    [UIView animateWithDuration:3.0f delay:0.0f options:UIViewAnimationOptionCurveLinear animations:^{button1.alpha = 0.0;} completion:^(BOOL finished)
        {
            if (finished)
                [UIView animateWithDuration:3.0f delay:1.0f options:UIViewAnimationOptionCurveLinear animations:^{button1.alpha = 1.0;} completion:nil];
        }
    ];
}
- (IBAction)push2:(id)sender
{
    
    [UIView animateKeyframesWithDuration:2.0
                                   delay:0.0
                                 options:UIViewAnimationOptionCurveLinear
                              animations:^{
                                  button2.transform = CGAffineTransformMakeScale(0.5, 0.5);
                              }
                              completion:^(BOOL finished)
     {
         if (finished) {
             [UIView animateWithDuration:2.0 animations:^{button2.transform = CGAffineTransformMakeScale(1,1);}];
         }
     }
     
     ];
  


}

- (IBAction)push3:(id)sender {
    CGRect oldRect = button3.frame;
    [UIView animateWithDuration:3.0f
                          delay:0.0
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         button3.frame = button4.frame;
                     }
                     completion:^(BOOL finished)
     {
         if (finished)
         {
             [UIView animateWithDuration:3.0f
                                   delay:1.0f
                                 options:UIViewAnimationOptionCurveLinear
                              animations:^{
                                  button3.frame = oldRect;
                              }
                              completion:nil
              ];
         }
     }
     ];
}
- (IBAction)push4:(id)sender {
    CGRect oldRect = button4.frame;
        [UIView animateWithDuration:3.0f
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         button4.frame = button3.frame;
                     }
                     completion:^(BOOL finished)
     {
         if (finished) {
             [UIView animateWithDuration:3.0f
                                   delay:1.0f
                                 options:UIViewAnimationOptionCurveEaseIn
                              animations:^{
                                  button4.frame = oldRect;
                              }
                              completion:nil
              ];
         }
     }
     ];

}
- (IBAction)push5:(id)sender {
  

     [UIView animateWithDuration:2.0
                     animations:^{
                         button5.transform  = CGAffineTransformRotate(button5.transform, M_PI_4);
                     }
                     completion:^(BOOL finished)
     {
         if(finished) [UIView animateWithDuration:2.0 animations:^
                       {
                             button5.transform  = CGAffineTransformRotate(button5.transform, -M_PI_4);
                           
                       }
                       ];
     }
     
     ];
   


}
- (IBAction)push6:(id)sender {
    
    button10.hidden = YES;
    [UIView transitionWithView:button6
                      duration:5.0
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{
       button6.hidden = YES;
                    }
                    completion:nil];
    [UIView transitionWithView:button10
                      duration:5.0
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{
                    	button10.hidden = NO;                    }
                    completion:nil];
}

-(void)finishanimation
{
    NSLog(@"finish");
    [button6 setTitle:@"1" forState:UIControlStateNormal];
}
- (IBAction)push7:(id)sender
{
    button11.hidden = YES;
    [UIView transitionWithView:button7
                      duration:5.0
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        button7.hidden = YES;
                    }
                    completion:nil];
    [UIView transitionWithView:button11
                      duration:5.0
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                    	button11.hidden = NO;                    }
                    completion:nil];
}





- (IBAction)push8:(id)sender {
    
  CGRect oldRect3 = button3.frame;
    CGRect oldRect4 = button4.frame;
    [UIView animateWithDuration:5.0 delay:0.0 options:UIViewAnimationOptionCurveLinear
                     animations:^
                    {
                        button1.alpha = 0.0;
                        button2.transform = CGAffineTransformMakeScale(0.5, 0.5);
                        button3.frame = button4.frame;
                         button4.frame = oldRect3;
                        button5.transform = CGAffineTransformMakeRotation(M_PI_4);
                     }
                     completion:^(BOOL finished)
     {
     
     if(finished)
     {
         [UIView animateWithDuration:5.0 delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^
         
         {
             button1.alpha = 1.0;
             button2.transform = CGAffineTransformMakeScale(1,1);
             button3.frame = oldRect3;
             button4.frame = oldRect4;
             button5.transform = CGAffineTransformMakeRotation(0);
         }
          
                          completion:nil];
        
     }
    
     
     }
     
     ];
  
  
    button10.hidden = YES;
    [UIView transitionWithView:button6
                      duration:5.0
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{
                        
                        button6.hidden = YES;
                    }
                    completion:nil];
    [UIView transitionWithView:button10
                      duration:5.0
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{
                    	button10.hidden = NO;                    }
                    completion:nil];

    button11.hidden = YES;
    [UIView transitionWithView:button7
                      duration:5.0
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        button7.hidden = YES;
                    }
                    completion:nil];
    [UIView transitionWithView:button11
                      duration:5.0
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                    	button11.hidden = NO;                    }
                    completion:nil];
    

    
    
    


}
- (IBAction)push9:(id)sender {
    //
    //HW3SecondViewController * secondView = [[HW3SecondViewController alloc]initWithNibName:@"HW3SecondViewController" bundle:nil];
    
    [UIView transitionWithView:button9 duration:5.0 options:UIViewAnimationOptionTransitionFlipFromBottom animations:^{} completion:nil];
    
}
- (IBAction)push10:(id)sender {
    button6.hidden = YES;
    [UIView transitionWithView:button10
                      duration:5.0
                       options:UIViewAnimationOptionTransitionFlipFromRight
                    animations:^{
                        button10.hidden = YES;
                    }
                    completion:nil];
    [UIView transitionWithView:button6
                      duration:5.0
                       options:UIViewAnimationOptionTransitionFlipFromRight
                    animations:^{
                    	button6.hidden = NO;                    }
                    completion:nil];
}
- (IBAction)push11:(id)sender {
    
    button7.hidden = YES;
    [UIView transitionWithView:button11
                      duration:5.0
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        button11.hidden = YES;
                    }
                    completion:nil];
    [UIView transitionWithView:button7
                      duration:5.0
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                    	button7.hidden = NO;                    }
                    completion:nil];
}


-(void)viewWillLayoutSubviews
{
    if (UIInterfaceOrientationIsLandscape(self.interfaceOrientation))
    {
        
        button1.titleLabel.font = [UIFont systemFontOfSize:110.0];
        button2.titleLabel.font = [UIFont systemFontOfSize:110.0];
        button3.titleLabel.font = [UIFont systemFontOfSize:110.0];
        button4.titleLabel.font = [UIFont systemFontOfSize:110.0];
        button5.titleLabel.font = [UIFont systemFontOfSize:110.0];
        button6.titleLabel.font = [UIFont systemFontOfSize:110.0];
        button7.titleLabel.font = [UIFont systemFontOfSize:110.0];
        button8.titleLabel.font = [UIFont systemFontOfSize:110.0];
        button9.titleLabel.font = [UIFont systemFontOfSize:110.0];

    
        NSLog(@"land");
    }
    else
    {
    button1.titleLabel.font = [UIFont systemFontOfSize:170.0];
    button2.titleLabel.font = [UIFont systemFontOfSize:170.0];
    button3.titleLabel.font = [UIFont systemFontOfSize:170.0];
    button4.titleLabel.font = [UIFont systemFontOfSize:170.0];
    button5.titleLabel.font = [UIFont systemFontOfSize:170.0];
    button6.titleLabel.font = [UIFont systemFontOfSize:170.0];
    button7.titleLabel.font = [UIFont systemFontOfSize:170.0];
    button8.titleLabel.font = [UIFont systemFontOfSize:170.0];
    button9.titleLabel.font = [UIFont systemFontOfSize:170.0];
      
        NSLog(@"Port");
    }
}




@end
