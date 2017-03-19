//
//  MoviesListViewModel.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "Common.h"
#import "MoviesListViewModel.h"
#import "Movie.h"

@interface MoviesListViewModel ()

@property (nonatomic, strong) id<MovieProvider> provider;

@end

@implementation MoviesListViewModel

- (instancetype)initWithMovieProvider:(id<MovieProvider>)movieProvider {
    self = [super init];
    if (self) {
        _provider = movieProvider;
    }
    return self;
}

- (void)loadMovies:(MoviesRetrievedBlock)completion {
    weakify(self);
    [_provider getMovies:^(NSArray <MovieViewModel *> *movies) {
        strongify(self);
        if (!self) { return; }
        self->_movies = movies;
        
        if (completion) {
            completion(movies);
        }
    }];
}

- (nullable Movie *)getMovie:(NSInteger)index{
    return [_provider getMovie:index];
}

@end
