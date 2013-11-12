//
//  SecondViewController.m
//  DZ1
//
//  Created by Admin on 11/8/13.
//  Copyright (c) 2013 MSU. All rights reserved.
//

#import "SecondViewController.h"
#import <Twitter/Twitter.h>
#import "ThirdViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize mytableView;
@synthesize strings;
@synthesize myswitch;
//@synthesize newString;

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
         [self.navigationController setNavigationBarHidden:NO];
    self.navigationItem.hidesBackButton = YES;
    self.title = @"Table";
    strings = [[NSMutableArray alloc]initWithObjects:@"Anton Batuev Anton Batuev Anton Batuev Anton Batuev",@"b",@"c",@"d",@"e",@"f", nil];
    self.navigationController.delegate=self;

    
    
    UIBarButtonItem *edit =[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(editing)];
    self.navigationItem.rightBarButtonItem = edit;
    
    UIBarButtonItem *add = [[UIBarButtonItem alloc]initWithTitle:@"Add row" style:UIBarButtonSystemItemDone target:self action:@selector(add_row)];
    
    self.navigationItem.leftBarButtonItem = add;
    mytableView.frame=CGRectMake(0, 0, 320, 60);
    
    
    myswitch = [[UISwitch alloc]initWithFrame:CGRectMake(0, 0, 200, 40)];
    [myswitch  addTarget:self action:@selector(changeState) forControlEvents:UIControlEventValueChanged];

    UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(60, 0, 80, 30)];
    lbl.text  = @"Edit row";
    
    //button.backgroundColor = [UIColor redColor];
    [myswitch setEnabled:YES];
    
    [myswitch addSubview:lbl];
   
   // UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:lbl];
    self.navigationItem.titleView = myswitch;
    

  //  self.navigationItem.titleView = button;
    
  //  self.navigationItem.titleView = lbl;
    
    
    //   textView.delegate= self;
    
//    UIActionSheet *actSheet = [[UIActionSheet alloc] initWithTitle:@"Заголовок"
//                                                          delegate:self
//                                                 cancelButtonTitle:@"Кнопка отмены"
//                                            destructiveButtonTitle:@"Красная кнопка"
//                                                 otherButtonTitles:@"Другая кнопка",nil];
    
    //   [actSheet showInView:self.view];
   // [actSheet showFromTabBar:self.navigationController.toolbar];
   // [actSheet show];
//    UITextView *textView = [simpleAlert textInputMode];
//    textView = [[UITextView alloc]initWithFrame:CGRectMake(12, 60, 250, 100)];
//     textView.backgroundColor = [UIColor redColor];
//    [textView setText:@""];

 //   simpleAlert.frame = CGRectMake(0, 0, 320, 480);
 
   // simpleAlert.alertViewStyle=UIAlertViewStyleDefault;
   // [simpleAlert addSubview:textView];
   // [simpleAlert show];
    
}

- (void)editing {
    [self.mytableView setEditing:!self.mytableView.editing animated:YES];
}

-(void)changeState
{
    ThirdViewController *thirdView = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    if (myswitch.isOn ==YES )
    {
        NSLog(@"YES");
        UIAlertView *simpleAlert = [[UIAlertView alloc] initWithTitle:@"Включен режим редактирования строки"
                                                              message:@"Для редактирования выбирите нужную строку "
                                                             delegate:self
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles:nil];
        thirdView.helpString = @"YES";
        [simpleAlert show];
        
    }
    else {NSLog(@"NO");thirdView.helpString = @"NO";}
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [strings count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
   static int i=0;
    static NSString *CellIdentifier;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainCell"];
    
    
    if(cell==nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.textLabel.font = [UIFont fontWithName:@"Arial" size:25.0f];
        cell.textLabel.text = [strings objectAtIndex:indexPath.row];
        cell.textLabel.lineBreakMode = UILineBreakModeWordWrap;
        cell.textLabel.numberOfLines = 0;
        if((i % 2)==0)
        {
            cell.backgroundColor = [UIColor colorWithRed:200.0/255.0 green:220.0/255.0 blue:255.0/255.0 alpha:1.0];
        }
        else
        {
            cell.backgroundColor = [UIColor colorWithRed:180.0/255.0 green:200.0/255.0 blue:200.0/255.0 alpha:1.0];
        }
       // i++;
        NSLog(@"i = %d",i/2);
    }
    i++;
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellText = [strings objectAtIndex:indexPath.row];
    CGSize labelSize = [cellText sizeWithFont:[UIFont systemFontOfSize:25] constrainedToSize:CGSizeMake(self.view.bounds.size.width - 40,CGFLOAT_MAX)  // - 40 For cell padding
                      lineBreakMode:NSLineBreakByWordWrapping];
    return labelSize.height + 25.0f;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath * )indexPath
{
    ThirdViewController *thirdView  = [[ThirdViewController alloc]initWithNibName:@"ThirdViewController" bundle:nil];
    thirdView.delegate =self;
    if (myswitch.isOn==YES)
    {
        thirdView.addOrEdit= @"EDIT";
        [self.navigationController pushViewController:thirdView animated:YES];
        thirdView.helpString = [NSString stringWithString:[strings objectAtIndex:indexPath.row]];
        thirdView.selectedRow = indexPath.row;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}


- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return @"Удалить";
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [strings removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]withRowAnimation:UITableViewRowAnimationTop];
    }
    if (editingStyle == UITableViewCellEditingStyleInsert)
    {
        [strings insertObject:@"Tutorial" atIndex:0];
        [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    [strings exchangeObjectAtIndex:sourceIndexPath.row withObjectAtIndex:destinationIndexPath.row];
}


- (UITableViewCellEditingStyle)tableView:(UITableView *)aTableView
           editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}


-(void) add_row
{
    ThirdViewController* thirdView = [[ThirdViewController alloc]initWithNibName:@"ThirdViewController" bundle:nil];
    thirdView.addOrEdit = @"ADD";
    thirdView.delegate =self;
    [self.navigationController pushViewController:thirdView animated:YES];
}

- (void)addIt:(ThirdViewController *)controller string:(NSString *)item row:(int)_row
{
    
   
    NSLog(@"string  = %@, row = %d",item,_row);
    newString = item;
    select_row = _row;
    if (select_row == -2)
    {
        [strings addObject:item];
        self.myTableView.reloadData;
    }
    else if (select_row == -1)
    {
        [strings insertObject:item atIndex:0];
        self.myTableView.reloadData;
    }
}


- (void)editRow:(ThirdViewController*)controller newString:(NSString*)string row:(int)_row
{
    NSLog(@"string = %@   row = %d",string,_row);
    [strings replaceObjectAtIndex:_row withObject:string];
     [mytableView reloadData];
}


@end