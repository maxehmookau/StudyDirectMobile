//
//  FetchCourseListConnection.h
//  StudyDirectMobile
//
//  Created by Max Woolf on 20/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FetchCourseListConnection : NSURLConnection
{
    NSString *username;
    NSString *password;
}

-(id)initWithUsername:(NSString *)aUsername password:(NSString *)aPassword delegate:(id)aDelegate;
-(NSURLRequest *)getRequest;
@end
