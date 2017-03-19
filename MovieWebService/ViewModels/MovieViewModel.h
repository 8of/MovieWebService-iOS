//
//  MovieViewModel.h
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <Foundation/Foundation.h>

@class Movie;

NS_ASSUME_NONNULL_BEGIN

@interface MovieViewModel : NSObject

@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, strong, readonly) NSString *date;
@property (nonatomic, strong, readonly) NSString *ageRating;
@property (nonatomic, strong, readonly) NSString *rating;

- (instancetype)initWithMovie:(Movie *)movie;

@end

NS_ASSUME_NONNULL_END
