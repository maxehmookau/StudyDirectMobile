#import "SDMCourse.h"

@implementation SDMCourse
@synthesize term, year, level, department, name, URL;
-(id)initWithTerm:(NSString *)aTerm year:(NSString *)aYear level:(NSString *)aLevel department:(NSString *)aDepartment name:(NSString *)aName URL:(NSURL *)aURL
{
    term = aTerm;
    year = aYear;
    level = aLevel;
    department = aDepartment;
    name = aName;
    URL = aURL;
    return [super init];
}
@end
