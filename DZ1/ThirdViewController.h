//
//  ThirdViewController.h
//  DZ1
//
//  Created by Admin on 11/8/13.
//  Copyright (c) 2013 MSU. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ThirdViewController;

@protocol ThirdViewControllerDelegate <NSObject>
- (void)addIt:(ThirdViewController *)controller string:(NSString *)item row:(int)_row;
- (void)editRow:(ThirdViewController*)controller newString:(NSString*)string row:(int)_row;
@end



@interface ThirdViewController : UIViewController



@property (nonatomic) NSString * textinTextView;
@property (weak, nonatomic) IBOutlet UITextView *mytextView;
@property (nonatomic, weak) id <ThirdViewControllerDelegate> delegate;
@property (strong, nonatomic) IBOutlet UIButton *beginButton;
@property (strong, nonatomic) IBOutlet UIButton *endButton;
@property (nonatomic) NSString * helpString;
@property (nonatomic) NSString * addOrEdit;
@property (nonatomic) NSUInteger selectedRow;

@end
