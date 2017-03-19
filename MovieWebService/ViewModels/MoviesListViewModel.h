//
//  MoviesListViewModel.h
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MovieProvider.h"

@class MovieViewModel;
@class Movie;

NS_ASSUME_NONNULL_BEGIN

@interface MoviesListViewModel : NSObject

@property (nonatomic, strong, readonly) NSArray <MovieViewModel *> *movies;

- (instancetype)initWithMovieProvider:(id<MovieProvider>)movieProvider;

- (void)loadMovies:(MoviesRetrievedBlock)completion;

- (nullable Movie *)getMovie:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
