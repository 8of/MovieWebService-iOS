//
//  SampleMovieProvider.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "SampleMovieProvider.h"
#import "Movie.h"
#import "MovieViewModel.h"

@interface SampleMovieProvider ()

@property (nonatomic, strong) NSArray <NSDictionary *> *data;
@property (nonatomic, strong) NSArray <Movie *> *movies;

@end

@implementation SampleMovieProvider

- (instancetype)init {
    self = [super init];
    if (self) {
        _data = [self getLocalData];
    }
    return self;
}

-(void)getMovies:(MoviesRetrievedBlock)completion {
    NSMutableArray <MovieViewModel *> *mutableViewModels = [@[] mutableCopy];
    NSMutableArray <Movie *> *mutableMovies = [@[] mutableCopy];
    for (NSDictionary *movieData in _data) {
        
        NSError *error;

        Movie *movie = [MTLJSONAdapter modelOfClass:Movie.class
                                  fromJSONDictionary:movieData
                                               error:&error];
        if (error) {
            continue;
        }
        [mutableMovies addObject:movie];
        MovieViewModel *viewModel = [[MovieViewModel alloc] initWithMovie:movie];
        [mutableViewModels addObject:viewModel];
    }
    _movies = [mutableMovies copy];
    completion([mutableViewModels copy]);
}

- (nullable Movie *)getMovie:(NSInteger)index {
    if (index >= 0 && index < _movies.count) {
        return _movies[index];
    }
    return nil;
}

#pragma mark - Private

- (NSArray *)getLocalData {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"movies" ofType:@"json"];
    NSString *myJSON = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:NULL];
    NSError *error =  nil;
    NSArray *jsonDataArray = [NSJSONSerialization JSONObjectWithData:[myJSON dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&error];
    return jsonDataArray;
}

@end
