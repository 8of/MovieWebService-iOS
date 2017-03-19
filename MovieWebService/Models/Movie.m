//
//  Movie.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "Movie.h"
#import "Actor.h"
#import "Director.h"

@implementation Movie

@synthesize nominated = _nominated;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
         @"name" : @"name",
         @"ageRating" : @"filmRating",
         @"rating" : @"rating",
         @"languages" : @"languages",
         @"nominated" : @"nominated",
         @"releaseDate" : @"releaseDate",
         @"director" : @"director",
         @"actors" : @"cast"
    };
}

+ (NSValueTransformer *)releaseDateJSONTransformer
{
    return [MTLValueTransformer transformerUsingForwardBlock:^id(NSNumber *timestamp, BOOL *success, NSError *__autoreleasing *error) {
        NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp.integerValue];
        return date;
    }];
}

+ (NSValueTransformer *)stateJSONTransformer {
    return [NSValueTransformer mtl_valueMappingTransformerWithDictionary:@
    {
        @0: @(MovieRating_G),
        @1: @(MovieRating_PG),
        @2: @(MovieRating_PG13),
        @3: @(MovieRating_R),
        @4: @(MovieRating_NC17)
    }];
}

+ (NSValueTransformer *)actorsJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:Actor.class];
}

+ (NSValueTransformer *)directorJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:Director.class];
}

@end
