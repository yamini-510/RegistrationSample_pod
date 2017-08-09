//
//  RegistrationViewController.h
//  LoginSample
//
//  Created by Thrymr on 08/08/17.
//  Copyright © 2017 Thrymr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EnumHeader.h"

@interface RegistrationViewController : UIViewController
{
    UITextField *sampleTextField;
    UIButton *hide;
}

@property(nonatomic)UIDatePicker *picker;

//@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
//@property (weak, nonatomic) IBOutlet UITextField *lastBNameTextFeild;
//
//@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
//@property (weak, nonatomic) IBOutlet UITextField *passwordTextFeils;
//@property (weak, nonatomic) IBOutlet UITextField *confirmPwdTextFiled;
//@property (weak, nonatomic) IBOutlet UITextField *DOBTextField;
//@property (weak, nonatomic) IBOutlet UITextField *phoneNumberTextField;
//
//@property (weak, nonatomic) IBOutlet UIButton *registerButton;
//@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
//
//- (IBAction)registerAction:(id)sender;
//- (IBAction)datePickerAction:(id)sender;

-(UITextField *)textField:(UITextField *)textField withKind:(kindOfObjectMethodNames)MethodName;

-(NSString *)datePicker:(UITextField *)textField withMaxDate:(NSDate *)maxDate withMinDate:(NSDate *)minDate withFormat:(NSString *)dateFormat;

-(void)hideKeyBoard;

-(void)setTextFieldFont;

@end
