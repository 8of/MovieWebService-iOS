//
//  SampleDataHelper.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "SampleDataHelper.h"

@implementation SampleDataHelper

+ (NSDictionary *)getMovieData {
    NSString *filePath = [[NSBundle bundleForClass:[self class]] pathForResource:@"movies" ofType:@"json"];
    NSString *myJSON = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:NULL];
    NSError *error =  nil;
    NSArray *jsonDataArray = [NSJSONSerialization JSONObjectWithData:[myJSON dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&error];
    return jsonDataArray.firstObject;
}

@end
