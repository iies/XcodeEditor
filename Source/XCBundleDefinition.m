//
//  XCBundleDifinition.m
//  xcode-editor
//
//  Created by Dennis Park on 2015. 8. 6..
//
//

#import "XCBundleDefinition.h"

@implementation XCBundleDefinition

@synthesize filePath = _filePath;
@synthesize copyToDestination = _copyToDestination;

/* ====================================================================================================================================== */
#pragma mark - Class Methods

+ (XCBundleDefinition*)bundleDefinitionWithFilePath:(NSString*)filePath copyToDestination:(BOOL)copyToDestination
{
    
    return [[XCBundleDefinition alloc] initWithFilePath:filePath copyToDestination:copyToDestination];
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
