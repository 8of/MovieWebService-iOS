//
//  GenericRole.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "GenericRole.h"

@implementation GenericRole

@synthesize nominated = _nominated;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"name" : @"name",
             @"dateOfBirth" : @"dateOfBirth",
             @"biography" : @"biography",
             @"nominated" : @"nominated"
             };
}

+ (NSValueTransformer *)dateOfBirthJSONTransformer
{
    return [MTLValueTransformer transformerUsingForwardBlock:^id(NSNumber *timestamp, BOOL *success, NSError *__autoreleasing *error) {
        NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp.integerValue];
        
        return date;
    }];
}

@end
