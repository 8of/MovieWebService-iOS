//
//  DateHelper.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "DateHelper.h"

@implementation DateHelper

+ (NSString *)stringFromDate:(NSDate *)date {
    static NSDateFormatter *formatter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSCalendar* calendar = [NSCalendar currentCalendar];
        formatter = [NSDateFormatter new];
        formatter.calendar = calendar;
        formatter.dateFormat = @"MMM dd, yyyy";
    });
    return [formatter stringFromDate:date];
}

@end
