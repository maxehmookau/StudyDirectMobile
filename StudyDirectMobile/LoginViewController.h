//
//  LoginViewController.h
//  StudyDirectMobile
//
//  Created by Max Woolf on 20/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UILoginButton.h"
#import "FetchCourseListConnection.h"

@interface LoginViewController : UIViewController <NSURLConnectionDataDelegate>
{
    IBOutlet UILoginButton *loginButton;
    IBOutlet UITextField *usernameField;
    IBOutlet UITextField *passwordField;
    IBOutlet UIActivityIndicatorView *activity;
    
    FetchCourseListConnection *connection;
    NSMutableData *receivedData;
}

-(IBAction)hideKeyboard:(id)sender;
-(IBAction)loginButtonPressed:(id)sender;
@end
