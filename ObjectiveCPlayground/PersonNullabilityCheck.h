//
//  PersonNullabilityCheck.h
//  ObjectiveCPlayground
//
//  Created by Jakub Gawecki on 28/04/2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
// Because of that line of code and the very last line of code, every property, return type within, has non optional value
// if you want to accomplish some optional value you do it by changing types attribute to nullable like in the initialiser

// you can also set null_resettable value just like you its done in Swift with the tintcolor of something, when you set it to nil, it doesnt really set the color to nothing, but it sets it to the default blue. Example in implementation file
@interface PersonNullabilityCheck : NSObject
@property NSString *name;
@property (null_resettable) NSString *nameResettable;

- (instancetype)initWithName:(nullable NSString*)name;

- (NSString*)fetchGreetingsForTime:(NSString*)time;

@end

NS_ASSUME_NONNULL_END
