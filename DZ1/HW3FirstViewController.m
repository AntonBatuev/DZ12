//
//  HW3FirstViewController.m
//  DZ1
//
//  Created by Admin on 11/15/13.
//  Copyright (c) 2013 MSU. All rights reserved.
//

#import "HW3FirstViewController.h"
#import "HW3SecondViewController.h"

@interface HW3FirstViewController ()

@end

@implementation HW3FirstViewController

@synthesize button1,button2,button3,button4,button5,button6,button7,button8,button9;

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
    
        button2.transform = CGAffineTransformIdentity;
         [UIView animateWithDuration:3.0
                         animations:^{
                             //  green.transform = CGAffineTransformIdentity;
                             button2.transform = CGAffineTransformMakeTranslation(button2.frame.size.width/2, button2.frame.size.height/2);
                             button2.transform  = CGAffineTransformScale(button2.transform  ,0.5, 0.5);
                         }
                         completion:^(BOOL finished){
                            if (finished) [UIView animateWithDuration:3.0 animations:^{
                                     button2.transform = CGAffineTransformTranslate(button2.transform, -2*button2.frame.size.width, -2*button2.frame.size.height);
                                    button2.transform  = CGAffineTransformMakeScale(1, 1);
    
    
                             }];
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
         if (finished) {
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
     // button4.layer.shadowColor = [[UIColor blueColor] CGColor];
    //button4.layer.shadowOpacity = 5.0f;
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
  

    button5.transform = CGAffineTransformIdentity;
    NSLog(@"x = %f y = %f",button5.center.x,button5.center.y);
    [UIView animateWithDuration:1.0
                     animations:^{
                         //green.transform = CGAffineTransformIdentity;
                         button5.transform = CGAffineTransformMakeTranslation(-100,-20);
                         button5.transform  = CGAffineTransformRotate(button5.transform, M_PI_4);
                     }
                     completion:^(BOOL finished)
     {
         if(finished) [UIView animateWithDuration:1.0 animations:^
                       {
                             button5.transform = CGAffineTransformTranslate(button5.transform,85,-55);
                             button5.transform  = CGAffineTransformRotate(button5.transform, -M_PI_4);
                           
                       }
                       ];
     }
     
     ];
    NSLog(@"x = %f y = %f",button5.center.x,button5.center.y);



}
- (IBAction)push6:(id)sender {
    
//    if (UIInterfaceOrientationIsLandscape(self.interfaceOrientation))
//    {
//        button6.titleLabel.font = [UIFont systemFontOfSize:110.0];
//    }
//    else
    
    
//    UIInterfaceOrientationIsLandscape(self.interfaceOrientation)?(button6.titleLabel.font = [UIFont systemFontOfSize:110.0]):(button6.titleLabel.font = [UIFont systemFontOfSize:170]);
//    if ([button6.currentTitle isEqualToString:@"6"])
//    {
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:0.5];
//   // [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:NO];
//    [UIView commitAnimations];
//  
//       // UIInterfaceOrientationIsLandscape(self.interfaceOrientation)?(button6.titleLabel.font = [UIFont systemFontOfSize:110.0]):(button6.titleLabel.font = [UIFont systemFontOfSize:170]);
//        [button6 setTitle:@"10" forState:UIControlStateNormal];
//        button6.titleLabel.font = [UIFont systemFontOfSize:90.0];
//    }
//         else
//         if ([button6.currentTitle isEqualToString:@"10"])
//         {
//             [UIView beginAnimations:nil context:nil];
//             [UIView setAnimationDuration:0.5];
//             // [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//             [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:NO];
//             [UIView commitAnimations];
//             [button6 setTitle:@"6" forState:UIControlStateNormal];
//             UIInterfaceOrientationIsLandscape(self.interfaceOrientation)?(button6.titleLabel.font = [UIFont systemFontOfSize:110.0]):(button6.titleLabel.font = [UIFont systemFontOfSize:170]);
//             // button6.titleLabel.font = [UIFont systemFontOfSize:170.0];
//         };
//
    
    HW3SecondViewController * secondView = [[HW3SecondViewController alloc]initWithNibName:@"HW3SecondViewController" bundle:nil];
    //[self.navigationController pushViewController:secondView animated:YES];
    secondView.numberButton = @"10";
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.navigationController.view  cache:NO];
    [self.navigationController pushViewController:secondView animated:YES];
    [UIView commitAnimations];
    
}

-(void)finishanimation
{
    NSLog(@"finish");
    [button6 setTitle:@"1" forState:UIControlStateNormal];
}
- (IBAction)push7:(id)sender
{
    HW3SecondViewController * secondView = [[HW3SecondViewController alloc]initWithNibName:@"HW3SecondViewController" bundle:nil];
    secondView.numberButton = @"11";
    [self.navigationController pushViewController:secondView animated:YES];
//    [UIView animateWithDuration:1.0
//                          delay:0.0
//                        options:UIViewAnimationOptionTransitionCrossDissolve
//                     animations:^{
//                         self.view.alpha = 0.0;
//                         secondView.view.alpha = 0.0;
//                      //   [self.navigationController pushViewController:secondView animated:YES];
//                     }
//                     completion:^(BOOL finished){
//                         if(finished)
//                         {
//                            
//                             [UIView animateWithDuration:0.0 animations:^{[self.navigationController pushViewController:secondView animated:NO];} completion:^(BOOL finished)
//                              {
//                                  if (finished) [UIView animateWithDuration:1.0 animations:^{secondView.view.alpha = 1.0;self.view.alpha = 1.0;}];
//                              }
//                              ];
//                         
//                         }
//                     }
//    ];
  //  [UIView transitionFromView:second.view toView:secondView.view duration:3.0 options:UIViewAnimationOptionTransitionCrossDissolve completion:nil];
  ///  [self.navigationController pushViewController:secondView animated:YES];
    //    [UIView animateWithDuration:2.0f
//                     animations:^{self.view.alpha = 0.0;}
//                     completion:^(BOOL finished)
//                    {
//                         if(finished)
//                         {
//                             [button7 setTitle:@"11" forState:UIControlStateNormal];
//                             [UIView animateWithDuration:2.0f
//                                              animations:^{self.view.alpha = 1.0;}
//                                              completion:nil];
//
//                     }
//     
//                        ];
}



- (IBAction)push8:(id)sender {
    
  //  [UIView animateWithDuration:2.0f delay:0.0f options:UIViewAnimationOptionCurveLinear animations:^{button1.alpha = 0.0;} completion:nil];
    button2.transform = CGAffineTransformIdentity;
    [UIView animateWithDuration:2.0 delay:0.0 options:UIViewAnimationOptionCurveLinear
                     animations:^
                    {
                        button1.alpha = 0.0;
                        button3.frame = button4.frame;
                         //  green.transform = CGAffineTransformIdentity;
                         button2.transform = CGAffineTransformMakeTranslation(button2.frame.size.width/2, button2.frame.size.height/2);
                         button2.transform  = CGAffineTransformScale(button2.transform  ,0.5, 0.5);
                        //button3.frame = button4.frame;
                     }
                     completion:nil];
    
    
//    [UIView animateWithDuration:2.0f
//                          delay:0.0
//                        options:UIViewAnimationOptionCurveLinear
//                     animations:^{
//                         button3.frame = button4.frame;
//                     }
//                     completion:nil];

    
    


}
- (IBAction)push9:(id)sender {
    HW3SecondViewController * secondView = [[HW3SecondViewController alloc]initWithNibName:@"HW3SecondViewController" bundle:nil];
    
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.0];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.navigationController.view cache:NO];
       [self.navigationController pushViewController:secondView animated:YES];
        [UIView commitAnimations];
    
    
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
