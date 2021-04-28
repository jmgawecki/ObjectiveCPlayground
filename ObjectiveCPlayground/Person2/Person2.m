//
//  Person2.m
//  ObjectiveCPlayground
//
//  Created by Jakub Gawecki on 27/04/2021.
//

#import "Person2.h"

@implementation Person2
// Here we created the method that uses the variable from the header file
- (void)printGreetings {
    NSLog(@"Hello %@!", name);
}


// This is how you implement a method with the property placed in header Person2 file
// To see how is executed go to "Pure properties in class" in main implementation file
-(void)printGreetingsWithProperty {
    NSLog(@"Hello %@!", self.nameProperty);
}

// Here is the second method
// It differs with the brackets for [self nameProperty]
-(void)printGreetingsWithPropertySecondMethod {
    NSLog(@"Hello %@!", [self nameProperty]);
}


-(void)printGreetingsAndAge {
    NSLog(@"Hello %@! You are %@ years old!", [self nameProperty], _age);
}

-(void)printGreetingsForAllKubas {
    NSLog(@"Hello %@, and %@, and %@", self.nameProperty, self.namePropertySame, self.namePropertyCopied);
}

@end
