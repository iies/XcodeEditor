//
//  XCDyLibDefinition.m
//  xcode-editor
//
//  Created by Dennis Park on 2015. 8. 6..
//
//

#import "XCDyLibDefinition.h"

@implementation XCDyLibDefinition

@synthesize name = _name;
@synthesize path = _path;

+ (XCDyLibDefinition*)dylibDefinitionWithName:(NSString*)name
{
    return [[XCDyLibDefinition alloc] initWithName:name path:nil];
}

+ (XCDyLibDefinition*)dylibDefinitionWithName:(NSString*)name path:(NSString*)path
{
    return [[XCDyLibDefinition alloc] initWithName:name path:path];
}

- (instancetype)initWithName:(NSString*)name path:(NSString *)path
{
    if (self = [super init]) {
        _name = [name copy];
        if (path) _path = [path copy];
    }
    return self;
}

@end
