//
//  Actor.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "Actor.h"

@implementation Actor

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @
    {
         @"name" : @"name",
         @"dateOfBirth" : @"dateOfBirth",
         @"biography" : @"biography",
         @"nominated" : @"nominated",
         @"screenName" : @"screenName"
     };
}

@end
