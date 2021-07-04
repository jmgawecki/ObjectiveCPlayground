//
//  Person2.h
//  ObjectiveCPlayground
//
//  Created by Jakub Gawecki on 27/04/2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
// This is how we define instance variable (ivar) for a class
// We create a parantheses from NSObject
// We add @public
// We list variables
// Variables are accessible in implementation file Person2.m
@interface Person2 : NSObject {
    @public
    NSString *name;
}
// This is how we define property for classes in Objective-C
// We add @property, type, name of the property
// Now, go to Person2 implementation file and see the method printGreetingsWithProperty
// This property is always authomatically synthesised (Xcode creates it's ivar)
@property NSString *nameProperty;
// The same property we could write like this if wanted to be specific as those attributes are by the default
@property (strong, atomic, readwrite) NSString *namePropertySame;
// If you want to be sure your data is fixed and cannot be changed when changing value of the same NSMutableString that the property is pointing to, you can do this
@property (copy) NSString *namePropertyCopied;

// You can also access property directly communicating to ivar.
// At the end, when creating a property, Xcode creates ivar to it on a back
// See method printGreetingsAndAge in implementation file
@property NSNumber *age;
- (void)printGreetings;
- (void)printGreetingsWithProperty;
- (void)printGreetingsWithPropertySecondMethod;
- (void)printGreetingsAndAge;
- (void)printGreetingsForAllKubas;

@end

NS_ASSUME_NONNULL_END
