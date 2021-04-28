//
//  PersonNullabilityCheck.m
//  ObjectiveCPlayground
//
//  Created by Jakub Gawecki on 28/04/2021.
//

#import "PersonNullabilityCheck.h"

@implementation PersonNullabilityCheck
@synthesize nameResettable = _nameResettable;

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

- (NSString *)nameResettable {
    if (_nameResettable == nil) {
        return @"No name";
    } else {
        return _nameResettable;
    }
}
- (void)setNameResettable:(NSString *)nameResettable {
    _nameResettable = nameResettable;
}

- (NSString*)fetchGreetingsForTime:(NSString *)time {
    // That line of code would not work because we forcer all the properties to be nonnullable
//    self.name = nil;
    // However, if you bypass a property, and assing nil directly to ivar, you can do it and thats a bad thing
    _name = nil;
    // You can also bypass that check by creating a temporary string
    NSString *str = nil;
    // That is because compiler isn't able to trace the nil value from one line to the next.
    self.name = str;
    // All these mistakes will be catched by static analyzer so use it to do a check
    
    
    // If you want Analyzer to run everytime you build or run a project
    // Go to building settings
    // Enable Analyze During Build
    // If you want Analyze to be super deep:
    // Mode of Analysis for Build to DEEP
    
    return [NSString stringWithFormat:@"Good %@, %@!", time, self.name];
}

@end
