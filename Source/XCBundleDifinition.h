//
//  XCBundleDifinition.h
//  xcode-editor
//
//  Created by Dennis Park on 2015. 8. 6..
//
//

#import <Cocoa/Cocoa.h>
#import "XCAbstractDefinition.h"

@interface XCBundleDifinition : XCAbstractDefinition
{
    NSString* _filePath;
    BOOL _copyToDestination;
}

@property(nonatomic, strong, readonly) NSString* filePath;
@property(nonatomic, readonly) BOOL copyToDestination;

+ (XCBundleDifinition*)bundleDefinitionWithFilePath:(NSString*)filePath copyToDestination:(BOOL)copyToDestination;

- (id)initWithFilePath:(NSString*)filePath copyToDestination:(BOOL)copyToDestination;

- (NSString*)name;

@end
