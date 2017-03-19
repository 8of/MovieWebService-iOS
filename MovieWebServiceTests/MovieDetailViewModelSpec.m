//
//  MovieDetailViewModelSpec.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import "Movie.h"
#import "Director.h"
#import "MovieDetailViewModel.h"
#import "SampleDataHelper.h"
#import "MovieRolesViewModel.h"

SpecBegin(MovieDetailViewModel)

__block MovieDetailViewModel *viewModel = nil;

beforeEach(^{
    NSError *error;
    Movie *movie = [MTLJSONAdapter modelOfClass:Movie.class
                             fromJSONDictionary:[SampleDataHelper getMovieData]
                                          error:&error];
    viewModel = [[MovieDetailViewModel alloc] initWithDirector:movie.director andActors:movie.actors];
});

describe(@"Normal", ^{
    
    it(@"shoud have a 'director' property", ^{
        expect(viewModel.movieInfo.director).to.equal(@"Ben Affleck");
    });
    
    it(@"shoud have a 'actor' property", ^{
        expect(viewModel.movieInfo.actor).to.equal(@"Tom Hardy");
    });
    
    it(@"shoud have a 'protagonist' property", ^{
        expect(viewModel.movieInfo.protagonist).to.equal(@"batman");
    });
    
});


SpecEnd
