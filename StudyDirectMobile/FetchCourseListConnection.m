//
//  FetchCourseListConnection.m
//  StudyDirectMobile
//
//  Created by Max Woolf on 20/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FetchCourseListConnection.h"

@implementation FetchCourseListConnection

-(id)initWithUsername:(NSString *)aUsername password:(NSString *)aPassword delegate:(id)aDelegate
{
    username = aUsername;
    password = aPassword;
    return [super initWithRequest:[self getRequest] delegate:aDelegate startImmediately:YES];
}

-(NSURLRequest *)getRequest
{
    return [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://62.233.104.200/StudyDirect/GetCourseList.php?username=%@&password=%@", username, password]]];    
}
@end
