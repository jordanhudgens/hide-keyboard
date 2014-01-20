//
//  MyViewController.m
//  Delegate Demo
//
//  Created by Jordan Hudgens on 1/13/14.
//  Copyright (c) 2014 Jordan Hudgens. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad
{
    self.textField.delegate = self;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *updatedString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    self.myLabel.text = updatedString;
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)didTapClearButton:(id)sender {
    
    UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"my title" message:@"Are you sure you want to clear the text?" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
    [myAlert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {

    if (buttonIndex == 0)
    {
        NSLog(@"Yes");
    }
    else
    {
        NSLog(@"No");
    }
}
@end
