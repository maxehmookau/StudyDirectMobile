//
//  CourseListViewController.m
//  StudyDirectMobile
//
//  Created by Max Woolf on 21/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CourseListViewController.h"
#import "CourseCell.h"
#import "SDMCourse.h"

@interface CourseListViewController ()

@end

@implementation CourseListViewController

#pragma mark - Init
-(id)initWithCourseList:(NSArray *)aCourses
{
    courses = aCourses;
    return [super init];
}

#pragma mark - Table View Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [courses count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        //Load custom cell from NIB file
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CourseCell" owner:self options:NULL];
        cell = (CourseCell *) [nib objectAtIndex:0];    
    }
    SDMCourse *course = [courses objectAtIndex:indexPath.row];
    ((CourseCell*) cell).courseName.text=[course name];
    ((CourseCell*) cell).year.text=[course year];
    ((CourseCell*) cell).level.text=[course level];
    ((CourseCell*) cell).term.text=[course term];
    ((CourseCell*) cell).department.text=[course department];
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (void)viewDidLoad
{
    [self.navigationController setNavigationBarHidden:NO];
    [self setTitle:@"Enrolled Courses"];
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
