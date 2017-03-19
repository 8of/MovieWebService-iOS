//
//  SampleMovieProviderSpec.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import "SampleMovieProvider.h"
#import "MovieViewModel.h"

SpecBegin(SampleMovieProvider)

__block SampleMovieProvider *movieProvider = nil;

beforeEach(^{
    movieProvider = [[SampleMovieProvider alloc] init];
});


describe(@"Method", ^{
    
    it(@"can get some movies", ^{
        
        waitUntil(^(DoneCallback done) {
            [movieProvider getMovies:^(NSArray <MovieViewModel *> *movies) {
                if (movies.count > 0) {
                    expect(movies.firstObject).to.beKindOf([MovieViewModel class]);
                }
                done();
            }];
        });
    });
    
});


afterEach(^{
    movieProvider = nil;
});

SpecEnd
