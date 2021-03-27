//
//  main.m
//  ObjectiveCPlayground
//
//  Created by Jakub Gawecki on 27/03/2021.
//

#import <Foundation/Foundation.h>
/// int - This function returns an integer
/// main - The function is named main()
/// int argc - First parameter is called argc and its of type Int
/// const char * argv[] - Second parameter is an array of string called argv
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        int variable        = 10;
        
        if (variable == 19) {
            NSLog(@"Hello World");
        }
        
        switch (variable) {
            case 10:
                NSLog(@"Its 10!");
                break;
            case 20:
                NSLog(@"Its 20!");
                break;
            case 30:
                NSLog(@"Its 30!");
                break;
        }
        
        switch (variable) {
            case 1 ... 30:
                NSLog(@"Its somewhere between 1 and 30!");
                break;
                
            default:
                NSLog(@"It's something else :(");
        }
        
        switch (variable) {
            case 10:
            { // needs to be in curly braces if you want to declare some variable on a first line. If on a second, then braces are not needed
                int l = 10;
                NSLog(@"Hi");
            }
        }
        
        const int constant  = 10;
        
        NSString * str      = @"Hello everyone";
        
        NSArray * array     = @[@"Hello", @"World"];
        
    }
    return 0;
}
