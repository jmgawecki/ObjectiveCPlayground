//
//  NSString+Trimming.m
//  ObjectiveCPlayground
//
//  Created by Jakub Gawecki on 27/04/2021.
//

#import "NSString+Trimming.h"

@implementation NSString (Trimming)
- (NSString*)kg_stringByTrimming {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
@end
