//
//  Person.h
//  ObjectiveCPlayground
//
//  Created by Jakub Gawecki on 27/04/2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property NSString *name;
// This is where the external interface for the class is defined
- (void)printGreeting;
- (void)printGreetingTo:(NSString*)name;
- (void)printGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time;
- (NSDictionary*)fetchGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time;
- (instancetype)initWithName:(NSString*)name;
@end

NS_ASSUME_NONNULL_END
