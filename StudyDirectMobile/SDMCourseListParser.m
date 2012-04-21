#import "SDMCourseListParser.h"
#import "SBJson.h"
#import "SDMCourse.h"

@implementation SDMCourseListParser
+(NSArray *)arrayWithCourseData:(NSData *)inputData
{
    NSString *dataString = [[NSString alloc] initWithData:inputData encoding:NSUTF8StringEncoding];
    NSDictionary *rootDictionary = [dataString JSONValue];
    
    NSArray *courseNames = [rootDictionary allKeys];
    NSMutableArray *courses = [[NSMutableArray alloc] init];
    for (int x = 0; x < [courseNames count]; x++)
    {
        NSString *currentCourseName = [courseNames objectAtIndex:x];
        
        SDMCourse *newCourse = [[SDMCourse alloc] initWithTerm:[[rootDictionary objectForKey:currentCourseName] valueForKey:@"term"] year:[[rootDictionary objectForKey:currentCourseName] valueForKey:@"year"] level:[[rootDictionary objectForKey:currentCourseName] valueForKey:@"level "] department:[[rootDictionary objectForKey:currentCourseName] valueForKey:@"department"] name:currentCourseName URL:[[rootDictionary objectForKey:currentCourseName] valueForKey:@"link"]];
        [courses addObject:newCourse];
    }
    return courses;
}

@end
