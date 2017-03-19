//
//  MovieViewModel.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "MovieViewModel.h"
#import "Movie.h"
#import "DateHelper.h"

@implementation MovieViewModel

- (instancetype)initWithMovie:(Movie *)movie
{
    self = [super init];
    if (self) {
        _name = movie.name;
        _date = [DateHelper stringFromDate:movie.releaseDate];
        _ageRating = [self stringWithAgeRating:movie.ageRating];
        _rating = [NSString stringWithFormat:@"%@", @(movie.rating)];
    }
    return self;
}

- (NSString *)stringWithAgeRating:(MovieRating)ageRating {
    switch(ageRating) {
        case MovieRating_G:
            return @"G";
        case MovieRating_PG:
            return @"PG";
        case MovieRating_PG13:
            return @"PG13";
        case MovieRating_R:
            return @"R";
        case MovieRating_NC17:
            return @"NC17";
    }
}

@end
