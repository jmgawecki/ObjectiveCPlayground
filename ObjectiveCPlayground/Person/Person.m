//
//  Person.m
//  ObjectiveCPlayground
//
//  Created by Jakub Gawecki on 27/04/2021.
//

#import "Person.h"

@implementation Person
// Here you will put an implementation i.e. the source code to perform the methods you create

// Lets define a first example of a method
// - defines a normal method. If we had used + instead it would be a static method
// The return type is placed in parentheses before the method name. In this case it returns nothing (void)
- (void)printGreeting {
    NSLog(@"Hello Person!");
}

// Lets define a method with the parameter
// Syntax is the same at the beggining
// We need to add a colon :
// (type and a pointer in brackets)
// name of the parameter for function signature
- (void)printGreetingTo:(NSString*)name {
    NSLog(@"Hello %@", name);
}


// Lets try another method
- (void)printGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time {
    if ([time isEqualTo:@"morning"]) {
        NSLog(@"Good morning, %@", name);
    } else if ([time isEqualTo:@"evening"]) {
        NSLog(@"Good evening %@", name);
    } else {
        NSLog(@"Hello %@", name);
    }
}

// lets try another more complicated method
- (NSDictionary*)fetchGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time {
    if ([time isEqualTo:@"morning"]) {
        return @{
            @"English": [NSString stringWithFormat:@"Good morning, %@", name],
            @"French" : [NSString stringWithFormat:@"Bonjour %@", name]
        };
    } else if ([time isEqualTo:@"evening"]) {
        return @{
            @"English": [NSString stringWithFormat:@"Good evening, %@", name],
            @"French" : [NSString stringWithFormat:@"Bonsoir %@", name]
        };
    } else {
        return @{
            @"English": [NSString stringWithFormat:@"Hello %@", name],
            @"French" : [NSString stringWithFormat:@"Alo %@", name]
        };
    }
}
// Here is the method for creating an initializer for that object
- (instancetype)initWithName:(NSString*)name {
    // What it means is:
    // Try to make me an instance of my super class
    // If that succeeds, then I'll initialize my own properties
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}
@end
