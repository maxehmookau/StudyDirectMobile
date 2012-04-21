//
//  LoginViewController.m
//  StudyDirectMobile
//
//  Created by Max Woolf on 20/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LoginViewController.h"
#import "SDMCourseListParser.h"
#import "CourseListViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

#pragma mark - UI Elements
-(BOOL)textFieldShouldReturn:(UITextField*)textField;
{
    if(textField == usernameField)
    {
        [passwordField becomeFirstResponder];
    }else{
        [passwordField resignFirstResponder];
        [self loginButtonPressed:nil];
    }
    return NO; // We do not want UITextField to insert line-breaks.
}

-(void)hideKeyboard:(id)sender
{
    [usernameField resignFirstResponder];
    [passwordField resignFirstResponder];
}

-(void)loginButtonPressed:(id)sender
{
    receivedData = [[NSMutableData alloc] init];
    [receivedData setLength:0];
    [loginButton setAlpha:0];
    [activity startAnimating];
    
    //Form validation goes here
    
    connection = [[FetchCourseListConnection alloc] initWithUsername:[usernameField text] password:[passwordField text] delegate:self];
}

#pragma mark - Data Delegate
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [receivedData appendData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSArray *courseList = [SDMCourseListParser arrayWithCourseData:receivedData];
    //Pass this to the next view controller
    CourseListViewController *nextVC = [[CourseListViewController alloc] initWithCourseList:courseList];
    [self.navigationController pushViewController:nextVC animated:YES];
}

#pragma mark - View Lifecycle
- (void)viewDidLoad
{
    [loginButton awakeFromNib];
    [loginButton setCornerRadius:7.0f];
    [loginButton setHighColor:[UIColor colorWithRed:0.49 green:0.718 blue:0.184 alpha:1]];
    [loginButton setLowColor:[UIColor colorWithRed:0.306 green:0.49 blue:0.055 alpha:1]];
    [loginButton.layer setBorderWidth:0];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
