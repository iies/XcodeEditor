//
//  XCBundleDifinition.m
//  xcode-editor
//
//  Created by Dennis Park on 2015. 8. 6..
//
//

#import "XCBundleDifinition.h"

@implementation XCBundleDifinition

@synthesize filePath = _filePath;
@synthesize copyToDestination = _copyToDestination;

/* ====================================================================================================================================== */
#pragma mark - Class Methods

+ (XCBundleDifinition*)bundleDefinitionWithFilePath:(NSString*)filePath copyToDestination:(BOOL)copyToDestination
{
    
    return [[XCBundleDifinition alloc] initWithFilePath:filePath copyToDestination:copyToDestination];
}

/* ====================================================================================================================================== */
#pragma mark - Initialization & Destruction

- (id)initWithFilePath:(NSString*)filePath copyToDestination:(BOOL)copyToDestination
{
    self = [super init];
    if (self)
    {
        _filePath = [filePath copy];
        _copyToDestination = copyToDestination;
    }
    return self;
}

/* ====================================================================================================================================== */
#pragma mark - Interface Methods

- (NSString*)name
{
    return [_filePath lastPathComponent];
}

@end
