//
//  CourseListViewController.h
//  StudyDirectMobile
//
//  Created by Max Woolf on 21/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CourseListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

{
    NSArray *courses;
}

-(id)initWithCourseList:(NSArray*)courses;

@end
