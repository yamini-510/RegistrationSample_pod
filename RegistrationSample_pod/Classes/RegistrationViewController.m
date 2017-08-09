//
//  RegistrationViewController.m
//  LoginSample
//
//  Created by Thrymr on 08/08/17.
//  Copyright © 2017 Thrymr. All rights reserved.
//

#import "RegistrationViewController.h"

@interface RegistrationViewController ()

@end

@implementation RegistrationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)registerAction:(id)sender {
    
}

- (IBAction)datePickerAction:(id)sender {
}


-(UITextField *)textField:(UITextField *)textField withKind:(kindOfObjectMethodNames)MethodName
{
    NSLog(@"hi new method");
    sampleTextField = textField;
    switch (MethodName) {
            case EmailField:
            textField.keyboardType = UIKeyboardTypeEmailAddress;
            break;
            case PasswordField:
            [self rightViewOfTextField];
            textField.secureTextEntry = YES;
            break;
            case DateOfBirthField:
            textField.keyboardAppearance = NO;
            [self textFieldWithDatePicker:textField];
            break;
            case PhoneNumber:
            textField.keyboardType = UIKeyboardTypePhonePad;
            break;
            
        default:
            break;
    }
    [self toolBarButtonSetting];
    return textField;
}

-(void)toolBarButtonSetting
{
    UIToolbar* numberToolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    numberToolbar.barStyle = UIBarStyleDefault;
    numberToolbar.items = [NSArray arrayWithObjects:
                           [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
                           [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(hideKeyBoard)],
                           nil];
    
    [sampleTextField setInputAccessoryView:numberToolbar];
}

-(void)setTextFieldFont
{
    if (self.view.frame.size.height == IPHONE_5_SCREEN_HEIGHT)
    {
        
    }
}



-(void)textFieldWithDatePicker:(UITextField *)textField
{
    UIDatePicker *datePicker = [[UIDatePicker alloc] init];
    datePicker.datePickerMode = UIDatePickerModeDate;
    [datePicker addTarget:self action:@selector(datePickerValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    [textField setInputView:datePicker];
}

-(void)datePickerValueChanged:(id)sender
{
    NSLog(@"Date Picker");
}

-(NSString *)datePicker:(UITextField *)textField withMaxDate:(NSDate *)maxDate withMinDate:(NSDate *)minDate withFormat:(NSString *)dateFormat
{
    UIDatePicker *datePicker = [[UIDatePicker alloc] init];
    datePicker.datePickerMode = UIDatePickerModeDate;
    datePicker.maximumDate = maxDate;
    datePicker.minimumDate = minDate;
    //[datePicker addTarget:self action:@selector(datePickerValueChanged:withFormat:withTextField:) forControlEvents:UIControlEventValueChanged];
    UIToolbar *toolBar=[[UIToolbar alloc]initWithFrame:CGRectMake(0, -44,datePicker.frame.size.width, 44)];
    [toolBar setTintColor:[UIColor grayColor]];
    UIBarButtonItem *doneBtn=[[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStylePlain target:self action:@selector(ShowSelectedDate)];
    UIBarButtonItem *cancelBtn=[[UIBarButtonItem alloc]initWithTitle:@"Cancel" style:UIBarButtonItemStylePlain target:self action:@selector(ShowSelectedDate)];
    UIBarButtonItem *space=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [toolBar setItems:[NSArray arrayWithObjects:cancelBtn,space,doneBtn, nil]];
    [datePicker addSubview:toolBar];
    [textField setInputView:datePicker];
    return textField.text;
}

-(void)ShowSelectedDate
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    // [dateFormat setTimeZone:[NSTimeZone systemTimeZone]];
    [dateFormat setDateFormat:@"yyyy-dd-MM"];
    NSString *strDate = [NSString stringWithFormat:@"%@",[dateFormat stringFromDate:_picker.date]];
    sampleTextField.text = strDate;
    NSLog(@"selected date %@ ",strDate);
}

-(void)hideKeyBoard
{
    [sampleTextField resignFirstResponder];
}

-(void)rightViewOfTextField
{
    hide=[[UIButton alloc]initWithFrame:CGRectMake(0, 5, 65, 20)];
    
    [hide setTitle:@"Hide" forState:UIControlStateNormal];
    [hide setTitle:@"Show" forState:UIControlStateSelected];
    [hide setTitleColor:[UIColor redColor] forState:UIControlStateNormal];

    sampleTextField.rightViewMode=UITextFieldViewModeAlways;
    sampleTextField.rightView=hide;
    [hide addTarget:self action:@selector(hideBtnClicked: ) forControlEvents:UIControlEventTouchUpInside];
    [sampleTextField addSubview:hide];

}

-(void)hideBtnClicked:(id)sender
{
    UIButton *btn = sender;
    if ([btn isKindOfClass:[UIButton class]])
    {
        sampleTextField.secureTextEntry = NO;
        [btn setSelected:!btn.selected];
        if (!btn.selected)
        {
            sampleTextField.secureTextEntry = YES;
        }
    }
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
