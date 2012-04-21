#import <Foundation/Foundation.h>

@interface SDMCourse : NSObject
{
    NSString *term;
    NSString *year;
    NSString *level;
    NSString *department;
    NSString *name;
    NSURL *URL;
}

-(id)initWithTerm:(NSString *)aTerm year:(NSString *)aYear level:(NSString *)aLevel department:(NSString *)aDepartment name:(NSString *)aName URL:(NSURL *)aURL;

@property (nonatomic, copy) NSString *term;
@property (nonatomic, copy) NSString *year;
@property (nonatomic, copy) NSString *level;
@property (nonatomic, copy) NSString *department;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSURL *URL;

@end
