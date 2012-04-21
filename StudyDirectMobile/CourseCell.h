//
//  CourseCell.h
//  StudyDirectMobile
//
//  Created by Max Woolf on 21/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CourseCell : UITableViewCell
{
    IBOutlet UILabel *courseName;
    IBOutlet UILabel *term;
    IBOutlet UILabel *year;
    IBOutlet UILabel *level;
    IBOutlet UILabel *department;
}

@property (nonatomic, retain) UILabel *courseName;
@property (nonatomic, retain) UILabel *term;
@property (nonatomic, retain) UILabel *year;
@property (nonatomic, retain) UILabel *level;
@property (nonatomic, retain) UILabel *department;


@end
