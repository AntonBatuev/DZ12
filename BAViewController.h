//
//  BAViewController.h
//  DZ1
//
//  Created by Admin on 11/1/13.
//  Copyright (c) 2013 MSU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BAViewController : UIViewController
{
    int count;
}

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)pushbutton:(id)sender;

@end