//
//  main.m
//  ObjectiveCPlayground
//
//  Created by Jakub Gawecki on 27/03/2021.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person2.h"
#import "NSString+Trimming.h"
#import "PersonNullabilityCheck.h"
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
        
        if (check == NO) {
            if (check2 == YES) {
                NSLog(@"Something");
            }
        }
        
        
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
        
        // String interpolation for printing the descirption of NSNumber. We are using @
        NSNumber *integerTwelve = @12;
        
        NSLog(@"%@", integerTwelve);
        
        
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
        NSNumber *ten = [NSNumber numberWithInteger:10];
        
        float floatTen = [ten floatValue];
        
        NSLog(@"%f", floatTen);
        
        NSNumber *twelve = [NSNumber numberWithInteger:12];
        
        double doubleTwelve = [twelve doubleValue];
        
        NSLog(@"%f", doubleTwelve);
        
        // Shortcut version for creating NSNumber without brackets
        
        NSNumber *integerTen = @10;
        
        NSLog(@"%@", integerTen);
        
        
        // MARK: - Arrays
        
        // There are NSArray and NSMutableArray
        
        // This literal @ was introduced to simplify the syntax. Another examples shows a different way to handle crreating an Array with specyfing its type
        NSArray *villains = @[@"Megatron", @"Lord Voldemort", @"Loki"];
        
        for (NSString *villian in villains) {
            NSLog(@"Can the Doctor defeat the %@? Yes he can!", villian);
        }
        
        // This is the way without using @. When so, you need to remember about placing nil at the end but Xcode will do if for you anyway. Xcode needs to know where the arrays if finished.
        NSArray *villainsNotSimplified = [NSArray arrayWithObjects: @"Megatron", @"Voldermort", @"Loki", nil];
        
        for (NSString *villain2 in villainsNotSimplified) {
            NSLog(@"Can the Doctor defeat the %@? Yes he can!", villain2);
        }
        
        
        // Looping in reverse: reverseObjectEnumerator
        for (NSString *villian in [villains reverseObjectEnumerator]) {
            NSLog(@"Can the doctor defeat the %@? Yes he can!", villian);
        }
        
        // We can index from the array just like in Swift from 0
        NSLog(@"%@", villains[0]);
        
        // Anything written before 2012 will use objectAtIndex: x
        
        NSLog(@"%@", [villains objectAtIndex:0]);
        
        
        // That creates a variable that counts elements of the arrya
        NSUInteger villainsCounter = [villains count];
        
        NSLog(@"%lu", (unsigned long)villainsCounter);
        
        // Another example of count straight to print out
        NSLog(@"The Doctor faced %ld villians in that episode.", (long)[villains count]);
        
        
        // returns the location of an item in an array
        NSLog(@"Loki is villian number %ld", (long)[villains indexOfObject:@"Loki"]);
        
        // If you call indexOfObject for not existing object in an array, you will receive NSNotFound value which is a very large integer. 9223372036854775807 for 64 bit systems.
        // Objective-C does not have optionals!!!
        NSLog(@"Superman is villian number %ld", (long)[villains indexOfObject:@"Superman"]);
        
        
        // Returns the object at the specified location
        NSLog(@"The second villian was the %@", [villains objectAtIndex:1]);
        
        
        // converts an array into a string, using another string as glue
        NSLog(@"The doctor conquered these villains: %@", [villains componentsJoinedByString:@", "]);
        
        
        // MARK: - Mutable Arrays
        
        // You can create mutable arrays either using initializers from the NSMutableArray class or by calling mutableCopy on an existing NSArray
        NSMutableArray *villainsMutableCopy = [@[@"Loki", @"Lord Voldemort", @"Megatron"] mutableCopy];
        
        for (NSString *mutableVillain in villainsMutableCopy) {
            NSLog(@"The doctor fought the %@", mutableVillain);
        }
        // If using indext outside the array, it will cause the crash, unlike in reading object with the method indexOfObject
        // Inserting object with insertObject atIndex method
        [villainsMutableCopy insertObject:@"Donald Duck" atIndex:1];
        
        // Removing object with removeObjectAtIndex
        [villainsMutableCopy removeObjectAtIndex:1];
        
        // Removing all objects
        [villainsMutableCopy removeAllObjects];
        
        
        // MARK: - Arrays Sorting
        // Objective-C does not provide soritng method unlike Swift for any data types.
        // NSString provides us with compare method
        // We can use compare to sort an array by using it with the sortedArrayUsingSelector method
        // using @selector is similiar to Swift's #selector but it always requires to include a colon
        NSArray *sortedVillains = [villains sortedArrayUsingSelector: @selector(compare:)];
        
        for (NSString *sortedVillain in sortedVillains) {
            NSLog(@"%@", sortedVillain);
        }
        
        
        // MARK: - Functional Techniques
        // More notes in Notes under Functional Techniques file
        
        [villains enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"Can the Doctor defeat the %@? Yes he can!", obj);
        }];
        
        // using that block allows us to create a conditional and extra variable pointing to boolean *stop. Once the value is changed, loop will stop
        // obj is of type id which is an equivalent of Swift's AnyObject
        // idx is an index
        // *stop is pointing to false from the default
        // if pointing is changed at some point, it iterating block will stop
        [villains enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            if ([obj isEqualToString: @"Voldemort"]) {
                NSLog(@"Can the Doctor defeat the %@? Oh, apparently not.", obj);
                // we change the pointer to true so iteration will stop
                *stop = true;
            } else {
                NSLog(@"Can the Doctor defeat the %@? Yes he can!", obj);
            }
        }];
        
        // NSPredicate is a logical condition that is used lately as a predicate.
        // This needs to return something
        NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(id obj, NSDictionary *bindings) {
            // We create a predicate that will check
            // That components seperated by space will equal to 2
            return [[obj componentsSeparatedByString:@" "] count] == 2;
        }];
        
        // we use that predicate on villains's NSString to determine wether the NSString match the predicate. If it does then we insert it to newly created Array twoWordVillain
        NSArray *twoWordsVillains = [villains filteredArrayUsingPredicate:predicate];
        
        for (NSString *filteredVillain in twoWordsVillains) {
            NSLog(@"%@", filteredVillain);
        }
        
        
        // MARK: - Dictionaries
        // NSDictionary is unordered
        
        NSDictionary *ships = @{
            @"ORP Blyskawica":  @"Polish Naval Fleet WW2",
            @"Bottle ship":     @"From my desk",
            @"Executor":        @"Star Wars"
        };
        
        // Here is the example of an older syntax before the one above was introduced
        NSDictionary *shipsOldSyntax = [NSDictionary dictionaryWithObjectsAndKeys:
                                        @"Polish Naval Fleet WW2",  @"ORP Blyskawica",
                                        @"From my desk",            @"Bottle ship",
                                        @"Star Wars",               @"Executor",
                                        nil];
        
        
        // New version of printing out
        for (NSString *key in ships) {
            NSLog(@"The ship %@ featerus in %@", key, ships[key]);
        }
        
        // Old version of printing out
        for (NSString *key in shipsOldSyntax) {
            NSLog(@"The ship %@ features in %@", key, [ships objectForKey:key]);
        }
        
    
        // MARK: - Dictionaries, useful methods
        // Dictionaries have count method, as well as allKeys and allValues that returns an array respectively
        
        NSLog(@"%ld", [ships count]);
        
        NSLog(@"%@", [ships allKeys]);
        
        NSLog(@"%@", [ships allValues]);
        
        // You will find enumerateKeysAndObjectsUsingBlock method, which works identically to the enumerateObjectsUsingBlock method of NSArray
        
        // we use isEqual to compare NSString
        [ships enumerateKeysAndObjectsUsingBlock:^(id key, id value, BOOL *stop) {
            if ([key  isEqual: @"ORP Blyskawica"]) {
                NSLog(@"We found a ship from %@ and we will break the loop", value);
                *stop = YES;
            } else {
                NSLog(@"tralala");
            }
        }];
        
        
        // MARK: - Sets
        // Objective-C has two ways of creating sets. NSSet and NSCountedSet
        // NSSet has mutable NSMutableSet
        // NSCountedSet is automatically mutable
        
        NSSet *odd = [NSSet setWithObjects: @1, @3, @5, nil];
        
        NSSet *even = [NSSet setWithObjects: @2, @4, @6, nil];
        
        NSSet *combined = [odd setByAddingObjectsFromSet:even];
        
        NSMutableSet *mutable = [combined mutableCopy];
        
        [mutable addObject:@0];
        
        for (NSString *elementOfMutable in mutable) {
            NSLog(@"%@", elementOfMutable);
        }
        
        [mutable removeAllObjects];
        
        // NSCountedSet is powerful to count how many times something has appeared. It will appear only once in a set but NSCountedSet will keep counting anyway.
        NSCountedSet *numbers = [NSCountedSet setWithObjects: @1, @1, @2, nil];
        
        for (NSNumber *value in numbers) {
            NSLog(@"%@ appears %ld times", value, [numbers countForObject:value]);
        }
        
        
        // MARK: - Generics
        
        
        NSArray *namesGeneric = @[@"Kuba", @"Maks", @"Kalin"];
        
        for (NSString *name in namesGeneric) {
            NSLog(@"%@ has %ld letters", name, [name length]);
        }
        
        NSArray *numbersGenerics = @[@1, @2, @3];
        
        NSNumber *numberGeneric = numbersGenerics[0];
        NSLog(@"%@", numberGeneric);
        
        
        for (NSNumber *number in numbersGenerics) {
            NSLog(@"%@ has 0 letters cause it's a number!", number);
        }
        
        
        // There are generics in Objective-C but there are not much powerful compare to Swift's generics
        
        NSMutableArray<NSString *> *namesGenerics2 = [NSMutableArray arrayWithObjects:@"Kuba", @"Marta", @"Karolina", nil];
        [namesGenerics2 addObject:@"Marcin"];
        
        // arrayWithCapacity defines capacity but appareantly it doesn't matter. Array expands when needed
        NSMutableArray<NSString *> *namesGenerics3 = [NSMutableArray arrayWithCapacity:2];
        [namesGenerics3 addObject:@"Andrzej"];
        [namesGenerics3 addObject:@"Andrzej2"];
        [namesGenerics3 addObject:@"Andrzej3"];
        [namesGenerics3 addObject:@"Andrzej4"];
        [namesGenerics3 addObject:@"Andrzej5"];
        
        for (NSString *name in namesGenerics3) {
            NSLog(@"name %@ has %ld letters", name, [name length]);
        }
//        [namesGenerics3 addObject:@3]; that will not work
     
        // In that example, even when we specified that NSArray is of type NSNumber, you can still print using NSNumber or using NSString
        NSArray<NSNumber *> *numbersGenerics2 = @[@1, @2, @3, @4];
        
        for (NSString *number in numbersGenerics2) {
            NSLog(@"%@", number);
        }
        
        for (NSNumber *number in numbersGenerics2) {
            NSLog(@"%@", number);
        }
        
        // Generics will work the same with with Dictionaries and Sets
        // For Dictionaries you do need to specify types for keys and values:
        
        NSDictionary<NSString *, NSNumber *> *dictionaryGenerics = @{
            @"Karolina":    @5,
            @"Mama":        @6
        };
        
        [dictionaryGenerics enumerateKeysAndObjectsUsingBlock:^(NSString *key, NSNumber *obj, BOOL *stop) {
            if ([key isEqual:@"Karolina"]) {
                NSLog(@"%@ was found and the number is %@", key, obj);
                NSLog(@"We are breaking the loop");
                *stop = YES;
            } else {
                NSLog(@"%@", key);
            }
        }];
        
        // MARK: - NSObject
        // Objective-C has universal base class called NSObject, which is where almost every other class inherits from
        // UIViewController inherits from UIResponder, which in turn inherits from NSObject.
        // Swift classes dont have this concept but classes in Swift can confirm to NSObject
        
        // Behind the scenes, NSObject is implemented as both a class and a protocol
        
        // copy or mutable uses NSObject:
        NSMutableDictionary *dictionaryCopy = [dictionaryGenerics copy];
        // With respondsToSelector we can check if given object is compatibile with the method
        if ([dictionaryCopy respondsToSelector:@selector(removeAllObjects)]) {
            [dictionaryCopy removeAllObjects];
        } else {
            NSLog(@"dictionaryGenerics will not respond to the selector removeAllObjects");
        }
        
        
        //
        
        NSMutableArray *people = [NSMutableArray arrayWithObjects: @"Kuba", @"Kalin", @"Marta", nil];
        
        // mutable copy
        NSMutableArray *peopleCopy = [people mutableCopy];
        
        // isKindOfClass will check peopleCopy is of given class or a subclass of given class
        if ([peopleCopy isKindOfClass:[NSArray class]]) {
            // respondsToSelector will check if given object (type of it) responds to given method
            if ([people respondsToSelector:@selector(removeAllObjects)]) {
                [people performSelector:@selector(removeAllObjects)];
            }
        }
        
        if ([people count] == 0) {
            NSLog(@"Array of people is empty as it supposed to be!");
        }
        
        
        // MARK: - id and instancetype
        
        // Very little about this code, for more go to book again
        
        // MARK: - NSError
        
        // That creates a new NSError called error
        // That gets created to nil
        NSError *error;
        // If error will appear when creating that NSString, error will point to a pointer of that error
        NSString *contents = [NSString stringWithContentsOfFile:@"Hello.txt" usedEncoding:nil error:&error];
        
        if (contents == nil) {
            NSLog(@"%@", error);
        } else {
            NSLog(@"%@", contents);
        }
        // Its very unlikely that you will see NSError throught the development as it was replaced with try/catch blocks
    
        
        // MARK: - Blocks (Closures)
        // Blocks in Objective-C are quite complicated
        
        void (^printUniversalGreeting)(void) = ^{
            NSLog(@"Hello everyone");
        };
        // Let's break it down
        // void                         - The block returns nothing
        // (^printUniversalGreeting)    - Put the block into variable called "printUniversalGreeting"
        // (void)                       - The block accepts no parameters
        // = ^{...}                     - The contents of the block
        printUniversalGreeting();
        
        
        // Using that knowledge, we coud make a block that returns a string just by changing the first void:
        NSString* (^universalGreetingReturningNSString)(void) = ^{
            return @"Hello Everyone. I am a string and I have been returned";
        };
        
        NSString *greetingsAsString = [universalGreetingReturningNSString() copy];
        
        NSLog(@"%@", universalGreetingReturningNSString());
        NSLog(@"%@", greetingsAsString);
        
        // Now lets do it with calling a parameter
        NSString* (^greetingsWithTheName)(NSString *) = ^(NSString *name) {
            return [NSString stringWithFormat:@"Hello %@", name];
        };
        
        NSLog(@"%@", greetingsWithTheName(@"Kuba"));
        
        
        // If you would like to modify a variable from outside the block, inside that block you need to use __block
        
        __block NSInteger numberrro = 0;
        
        NSString* (^howManyRoads)(void) = ^{
            numberrro = 1;
            return [NSString stringWithFormat:@"How many roads? %ld!", numberrro];
        };
        
        NSLog(@"%@", howManyRoads());
        
        // MARK: - Classes and Objects
        
        Person *person = [Person new];
        [person printGreeting];
        [person printGreetingTo:@"Kuba! I came from the Person class from the method with the parameter!"];
        [person printGreetingTo:@"Kuba" atTimeOfDay:@"morning"];
        
        // This is how we would assign the result of calling function to a dictionary
        NSDictionary *greetingsDictionary = [person fetchGreetingTo:@"Kuba" atTimeOfDay:@"morning"];
        NSLog(@"%@", greetingsDictionary);
        
        
        // MARK: - Selectors
        
        // We can call functions through selectors
        [person performSelector:@selector(printGreeting)];
        
        // We can call functions through selectors with parameters like this
        [person performSelector:@selector(printGreetingTo:) withObject:@"Kuba"];
        
        /// WARNING!
        // If you try to perform selector on a method that do not belong to a class (printGreetings is from Person2), the app will crash
//        [person performSelector:@selector(printGreetings)];
        
        
        // MARK: - Properties in Class
        // Once we created a class Person2 that has one variable called name
        Person2 *person2 = [Person2 new];
        // Remember!! These two different formats of declaration mean exactly the same!
        person2->name = [NSString stringWithFormat:@"Person2"];
        person2->name = @"Person2";
        
        [person2 printGreetings];
        
        
        // MARK: - Pure Properties in Class
        // In Objective-C property is a method that gets and sets the value of an ivar (instance variable)
        // There are a lot of ways to write properties. The easies one however is to write @property before
      
        // First method of declaring
        person2.nameProperty = @"Kuba";
        person2.nameProperty = [NSString stringWithFormat: @"Kuba"];
        
        // Second method of declaring
        // Whenever you create a property, method setNAME/AGE/WHATEVER: will be created automatically and it's true for all classes
        [person2 setNameProperty:@"Taylor"];
        [person2 setAge:@23];
        
        [person2 printGreetingsWithProperty];
    
        
        person2.nameProperty    = @"Jakub Gawecki";
        person2.age             = @24;
        
        [person2 printGreetingsAndAge];
        
        
        // MARK: - Property attributes in Class
        
        NSMutableString *mutableName = [NSMutableString stringWithString:@"Jakub"];
        
        person2.nameProperty        = mutableName;
        person2.namePropertySame    = mutableName;
        person2.namePropertyCopied  = mutableName;
        
        [person2 printGreetingsForAllKubas];
        
        // That updates the variable to an entirely new NSMutableString instance
//        mutableName = [NSMutableString stringWithString:@"John"];
        // That actually changes its string:
        mutableName.string = @"John";
//        NSLog(@"%@", mutableName);
        // the result of that change is:
        // properties in the class that were strong, change their value once printing a with the function
        // the ones that have an attribute of copy, will not change as they copied a value, not referencing to it any longer
        [person2 printGreetingsForAllKubas];
        
        
        // MARK: - Class initializer
        
        // This is a method for initializing an object that has already created initialiser by hand.
        // Seems like initialising method for Objective-C class is not required.
        Person *personInit = [[Person alloc] initWithName:@"Jakub"];
        [personInit printGreeting];
        
        
        // MARK: - Categories for classes
        // We created a file that is NSString+Trimming that is a category (extension in Swift)
        // We created a method there for Trimming characters with white spaces
        NSString *stringToTrim = @"     Jakub     ";
        
        NSLog(@"%@", stringToTrim);
        // We used it here
        NSString *stringTrimmed = [stringToTrim kg_stringByTrimming];
        // It worked
        NSLog(@"%@", stringTrimmed);
        
        
        // MARK: - Nullability check
        
        PersonNullabilityCheck *personNullability = [[PersonNullabilityCheck alloc] initWithName:@"Jakub"];
        NSString *greetings = [personNullability fetchGreetingsForTime:@"morning"];
        
        NSLog(@"%@", greetings);
    }
    return 0;
}
