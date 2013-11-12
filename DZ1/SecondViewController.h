//
//  SecondViewController.h
//  DZ1
//
//  Created by Admin on 11/8/13.
//  Copyright (c) 2013 MSU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThirdViewController.h"
@interface SecondViewController : UIViewController<ThirdViewControllerDelegate>
{
    NSString * newString;
    NSInteger select_row;
}
@property (weak, nonatomic) IBOutlet UITableView *mytableView;
@property (strong, nonatomic)  NSMutableArray *strings;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (nonatomic,strong) IBOutlet  UISwitch* myswitch;
@property (nonatomic) IBOutlet UIBarButtonItem *edit;
@property (nonatomic) IBOutlet UIBarButtonItem *add;

@end
