//
//  MovieProvider.h
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <Foundation/Foundation.h>

@class Movie;
@class MovieViewModel;

NS_ASSUME_NONNULL_BEGIN

typedef void(^MoviesRetrievedBlock)(NSArray <MovieViewModel *> *movies);

@protocol MovieProvider <NSObject>

@required
- (void)getMovies:(MoviesRetrievedBlock)completion;
- (nullable Movie *)getMovie:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
