//
//  Movie.h
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Mantle/Mantle.h>
#import "Nominatable.h"

NS_ASSUME_NONNULL_BEGIN

@class Director;
@class Actor;

typedef NS_ENUM(NSUInteger, MovieRating) {
    MovieRating_G = 0,
    MovieRating_PG,
    MovieRating_PG13,
    MovieRating_R,
    MovieRating_NC17
} ;

@interface Movie : MTLModel <MTLJSONSerializing, Nominatable>

@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, strong, readonly) Director *director;
@property (nonatomic, assign, readonly) MovieRating ageRating;
@property (nonatomic, strong, readonly) NSArray <NSString *> *languages;
@property (nonatomic, strong, readonly) NSDate *releaseDate;
@property (nonatomic, strong, readonly) NSArray <Actor *> *actors;
@property (nonatomic, assign, readonly) CGFloat rating;

@end

NS_ASSUME_NONNULL_END
