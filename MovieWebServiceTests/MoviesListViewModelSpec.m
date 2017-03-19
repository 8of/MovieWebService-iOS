//
//  MoviesListViewModelSpec.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import "SampleMovieProvider.h"
#import "MoviesListViewModel.h"
#import "MoviesViewController.h"
#import "MovieViewModel.h"

SpecBegin(MoviesListViewModel)

describe(@"MoviesViewController", ^{
    
    it(@"should have a view model", ^{
        MoviesViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"MoviesViewController"];
        MoviesListViewModel *viewModel = [[MoviesListViewModel alloc] initWithMovieProvider:[SampleMovieProvider new]];
        vc.viewModel = viewModel;
        expect(vc.viewModel).to.equal(viewModel);
    });
    
});

describe(@"Normal", ^{
    
    it(@"should have movies after init", ^{
        SampleMovieProvider *provider = [[SampleMovieProvider alloc] init];
        MoviesListViewModel *viewModel = [[MoviesListViewModel alloc] initWithMovieProvider:provider];
        waitUntil(^(DoneCallback done) {
            
            [viewModel loadMovies:^(NSArray <MovieViewModel *> *movies) {
                if (movies.count > 0) {
                    expect(movies.firstObject).to.beKindOf([MovieViewModel class]);
                }
                done();
            }];
        });
    });
    
});


SpecEnd
