////
////  PropertyClass.h
////  ObjectiveCPlayground
////
////  Created by Jakub Gawecki on 27/04/2021.
////
//
//#import <Foundation/Foundation.h>
//
//NS_ASSUME_NONNULL_BEGIN
//
//@interface PropertyClass : NSObject
//// Class property is not authomatically synthesised
//// Therefore we need to do it by hand
//// Just below in @implementation
//@property (class) NSString *name;
//@end
//
//// We create an implementation (Extension?)
//@implementation PropertyClass
//// We defane our static name and set it to nil
//static NSString *_name = nil;
//
//// We set a reading method for it
//+ (NSString*)name {
//    return _name;
//}
//
//// We set a writing method for it
//+ (void)setName:(NSString *)str {
//    _name = str;
//}
//
//@end
//
//NS_ASSUME_NONNULL_END
