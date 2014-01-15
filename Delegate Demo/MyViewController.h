//
//  MyViewController.h
//  Delegate Demo
//
//  Created by Jordan Hudgens on 1/13/14.
//  Copyright (c) 2014 Jordan Hudgens. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UILabel *myLabel;
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end
