//
//  XCDyLibDefinition.h
//  xcode-editor
//
//  Created by Dennis Park on 2015. 8. 6..
//
//

#import <XcodeEditor/XcodeEditor.h>
#import "XCAbstractDefinition.h"

@interface XCDyLibDefinition : XCAbstractDefinition
{
    NSString *_name;
    NSString *_path;
}

@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, strong, readonly) NSString *path;

+ (XCDyLibDefinition*)dylibDefinitionWithName:(NSString*)name;
+ (XCDyLibDefinition*)dylibDefinitionWithName:(NSString*)name path:(NSString*)path;

- (instancetype)initWithName:(NSString*)name path:(NSString *)path;

@end
