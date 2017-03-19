//
//  MoviesViewController.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "Common.h"
#import "MoviesViewController.h"
#import "MovieCell.h"
#import "MovieDetailViewModel.h"
#import "Router.h"
#import "SampleMovieProvider.h"
#import "ControllerFactory.h"
#import "Movie.h"

@implementation MoviesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _viewModel = [[MoviesListViewModel alloc] initWithMovieProvider:[SampleMovieProvider new]];
    
    self.navigationItem.title = @"Root View Controller";
    self.tableView.estimatedRowHeight = 44;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.tableFooterView = [UIView new];
    
    weakify(self);
    [_viewModel loadMovies:^(NSArray <MovieViewModel *> *movies) {
        strongify(self);
        if (!self) { return; }
        [self.tableView reloadData];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _viewModel.movies.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MovieCell class]) forIndexPath:indexPath];
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    [(MovieCell *)cell setMovie:_viewModel.movies[indexPath.row]];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Movie *movie = [_viewModel getMovie:indexPath.row];
    if (!movie) { return; }
    MovieDetailViewModel *viewModel = [[MovieDetailViewModel alloc] initWithDirector:movie.director andActors:movie.actors];
    [Router pushDetailedFrom:self.navigationController withViewModel:viewModel];
}

@end
