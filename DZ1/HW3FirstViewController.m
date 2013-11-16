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
    CGRect frameBtn = CGRectMake(160.0f, 150.0f, 144.0f, 42.0f);
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

    [UIView animateWithDuration:3.0f delay:0.0f options:UIViewAnimationCurveLinear animations:^{button1.alpha = 0.0;} completion:^(BOOL finished)
        {
            if (finished)
                [UIView animateWithDuration:3.0f delay:1.0f options:UIViewAnimationCurveEaseIn animations:^{button1.alpha = 1.0;} completion:nil];
        }
    ];

}
- (IBAction)push2:(id)sender
{
    CGRect rext = CGRectMake(button2.frame.origin.x, button2.frame.origin.y, button2.frame.size.width+50, button2.frame.size.height+50);
   // button2.frame= rext;
    // = CGRectMake(button2.frame.origin.x, button2.frame.origin.y, button2.frame.size.width+10,button2.frame.size.height+10);
    button2 = [[UIButton alloc]initWithFrame:rext];
    [UIView animateWithDuration:1.0
                          delay:0.3
                        options:UIViewAnimationOptionLayoutSubviews
                     animations:^{
                      //   button2.frame=rext;
                     }
                     completion:nil
     ];
//        [UIView animateWithDuration:5.0f
//                              delay:0.0f
//                            options:UIViewAnimationCurveLinear
//                         animations:^{
//      button2.frame = CGRectMake(button2.frame.origin.x+button2.frame.size.width/4 , button2.frame.origin.y+button2.frame.size.height/4, button2.frame.size.width/2, button2.frame.size.height/2);
//            }
//     completion:^(BOOL finished)
//     {
//         if (finished)
//             [UIView animateWithDuration:3.0f delay:0.0f options:UIViewAnimationCurveLinear animations:^
//              {
//                  button2.frame = CGRectMake(button2.frame.origin.x-button2.frame.size.width/2 , button2.frame.origin.y-button2.frame.size.height/2, button2.frame.size.width*2, button2.frame.size.height/2);
//              } completion:nil];
//         
//      }
//     ];
//
//    [UIView animateWithDuration:3.0f delay:0.0f options:UIViewAnimationCurveLinear animations:^
//     {
//      button2.frame = CGRectMake(button2.frame.origin.x+button2.frame.size.width/4 , button2.frame.origin.y+button2.frame.size.height/4, button2.frame.size.width/2, button2.frame.size.height/2);
//     }
//                     completion:^(BOOL finished)
//     {
//         if (finished)
//             [UIView animateWithDuration:3.0f delay:0.0f options:UIViewAnimationCurveLinear animations:^
//              {
//               button2.frame = CGRectMake(button2.frame.origin.x-button2.frame.size.width/2 , button2.frame.origin.y-button2.frame.size.height/2, button2.frame.size.width*2, button2.frame.size.height/2);
//               
//
//              } completion:nil];
//         
//     }
//     ];



//button2.transform =  CGAffineTransformMakeScale(0,0);

}

- (IBAction)push3:(id)sender {
    CGRect oldRect = button3.frame;
    [UIView animateWithDuration:3.0f
                          delay:0.0
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
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
  
  //  [button6 setHidden:YES];
    
   // CGRect imageBounds = button5.bounds;
   // [button5.layer setAnchorPoint:CGPointMake(button5.center.x / imageBounds.size.width, button5.center.y / imageBounds.size.height)];
    [UIView animateWithDuration:0.5f delay:0.0f options:UIViewAnimationOptionCurveEaseIn animations:^{button5.transform =CGAffineTransformRotate(button5.transform, M_PI/4);} completion:nil];
    //button5.transform = CGAffineTransformMakeRotation(90 * M_PI/180);
    
}
- (IBAction)push6:(id)sender {
 HW3SecondViewController *aboutShowViewController = [[HW3SecondViewController alloc] initWithNibName:@"HW3SecondViewController" bundle:[NSBundle mainBundle]];
    
 
//  HW3FirstViewController *aboutShowViewController = [[HW3FirstViewController alloc] initWithNibName:@"HW3FirstViewController" bundle:[NSBundle mainBundle]];
//  [button6 setTitle:@"1" forState:UIControlStateNormal];
//    [UIView beginAnimations:@"" context:nil];
//    [UIView setAnimationDuration:5.0];
//    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//    [UIView setAnimationDidStopSelector:@selector(finishanimation)];
//    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.navigationController.view cache:NO];
//    [self.navigationController pushViewController:aboutShowViewController animated:YES];
//    [aboutShowViewController.button6 setTitle:@"10" forState:UIControlStateNormal];
    
    
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:5.0];
   // [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:NO];
    [UIView commitAnimations];
    if ([button6.currentTitle isEqualToString:@"6"]) {
        [button6 setTitle:@"10" forState:UIControlStateNormal];
        button6.titleLabel.font = [UIFont systemFontOfSize:90.0];
    }
         else
         if ([button6.currentTitle isEqualToString:@"10"])
         {
             [button6 setTitle:@"6" forState:UIControlStateNormal];
             button6.titleLabel.font = [UIFont systemFontOfSize:170.0];
         }
   // [button6 setTitle:@"1" forState:UIControlStateNormal];
    
    //[UIView transitionFromView:self.view toView:aboutSho
    
    
    
   //[UIView transitionFromView:self.view toView:aboutShowViewController.view duration:2.0 options:UIViewAnimationTransitionFlipFromRight completion:nil];
//    [UIView transitionWithView:self.view duration:1.0 options:UIViewAnimationTransitionFlipFromLeft animations:^{ [self.navigationController pushViewController:aboutShowViewController animated:YES];} completion:nil]
    ;//    [aboutShowViewController release];
}

-(void)finishanimation{
    NSLog(@"finish");
    [button6 setTitle:@"1" forState:UIControlStateNormal];
}
- (IBAction)push7:(id)sender
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.25];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition:UIViewAnimationOptionTransitionCrossDissolve forView:self.view cache:NO];
    [UIView commitAnimations];
    if ([button7.currentTitle isEqualToString:@"7"]) {
        [button7 setTitle:@"11" forState:UIControlStateNormal];
        button7.titleLabel.font = [UIFont systemFontOfSize:90.0];
    }
    else
        if ([button7.currentTitle isEqualToString:@"11"])
        {
            [button7 setTitle:@"7" forState:UIControlStateNormal];
            button7.titleLabel.font = [UIFont systemFontOfSize:170.0];
        }
    
}
- (IBAction)push8:(id)sender {
}
- (IBAction)push9:(id)sender {
}

@end
