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
        // MARK: - Variable Declaration
        
        
        NSLog(@"Hello, World!");
        
        int variable        = 10;
        
        const int constant  = 10;
        NSLog(@"%d", constant);
        
        NSString *str       = @"Hello everyone";
        NSLog(@"%@", str);
        
        NSArray *array      = @[@"Trala", @"Lala"];
        for (NSString *string in array) {
            NSLog(@"%@", string);
        }
        
        
        // MARK: - If statement
        
        
        if (variable == 19) {
            NSLog(@"Hello World");
        }
        
        
        // MARK: - Switch statement
        
        
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
                NSLog(@"Hi %d", l);
            }
        }
        
        
        // MARK: - Loop
        
        
        NSArray *names = @[@"Kalin", @"Kuba", @"Tomek"];
        
        for (NSString *name in names) {
            NSLog(@"Hello, %@", name);
        }
        
        
        // MARK: - Nil coalescing
        
        NSString *name = nil;
        NSLog(@"Hello, %@!", name ?: @"Anonymous");
        
        
        // MARK: - Constant Pointers
        
        // That changing of its value works just fine as you dont really change its value but change its pointers
        // I marked as its throws warning for some reason
//        int const * i = 20;
//        i = 10;
        
        // That would not work
        // const i = 20
        // i = 10
        
        // Pointers serve to point where the object is allocated in a memory.
        // By using %@p you can find pointer' address in a memory
        NSString *first = @"Hello";
        NSLog(@"%p!", first);
        
        first = @"World";
        NSLog(@"%p!", first);
        
        // If you place pointer before word const, you will not be able to modify pointer's value
        NSString * const second = @"Hi";
        NSLog(@"%@", second);
        //second = @""
        
        
        // MARK: - Booleans
        
        BOOL check  = YES;
        BOOL check2 = TRUE;
        
        check       = NO;
        check2      = FALSE;
        
        
        // MARK: - "String interpolation"
        
        int const one           = 1;
        NSString * const doggo  = @"doggo";
        
        // Prints the integer value
        NSLog(@"%d", one);
        
        // Prints the pointer's memory address
        NSLog(@"%p", doggo);
        
        // Prints a contents of the object (in that case its a NSStrig pointer's value that is "Doggo"
        NSLog(@"%@", doggo);
        
        // Prints a floating point numbers with two decimals
        NSLog(@"%.f2", M_PI);
        
        // Prints long integer's value
        NSInteger longInteger = 1239837498127349874;
        NSLog(@"%ld", (long)longInteger);
        
        
        // MARK: - String
        
        // You can create strings with many techniques
        NSInteger number = 42384723984723984;
        NSString * output = [NSString stringWithFormat:@"You picked %ld", (long)number];
        NSLog(@"%@", output);
        
        // Another way identical to line 143
        NSString * output2 = [[NSString alloc] initWithFormat:@"You picked %ld", (long)number];
        NSLog(@"%@", output2);
        
        
        // Creating a mutable string
        NSMutableString *hello = [@"Hello" mutableCopy];
        NSLog(@"%@", hello);
        // Same way:
        NSMutableString *hello2 = [NSMutableString stringWithFormat:@"..."];
        NSLog(@"%@", hello2);
        
        // You can specify maximum size of the string by specyfying number of character. Notice that actually creates an empty NSMutableString
        NSMutableString * hello3 = [NSMutableString stringWithCapacity: 4096];
        NSLog(@"%@", hello3);
        
        // Lets modify hello3
        [hello3 setString:@"Hi Hi"];
        
        NSLog(@"%@", hello3);
        
        // Even if you create unmutable String, if you assing to it a mutable value, and then change that mutable value, unmutable string will change too
        NSMutableString *mutableOne = [@"My String" mutableCopy];
        NSString *kindOfUnmutableButNotReally = mutableOne;
        [mutableOne setString:@"Not my string"];
        NSLog(@"%@", kindOfUnmutableButNotReally);
        // Solution for that is to create a copy when initialised instead
        NSString *reallyUnmutable = [mutableOne copy];
        NSLog(@"%@", reallyUnmutable);
        
        
        // MARK: - NSNumber
        // NSNumber is a class to store numbers of any type from Objective-C
        NSNumber * ten = [NSNumber numberWithInteger:19];
        
        float floatTen = [ten floatValue];
        
        NSLog(@"%f", floatTen);
    }
    return 0;
}
