//
//  DetailViewController.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "DetailViewController.h"
#import "MovieRolesViewModel.h"

@interface DetailViewController ()

@property (nonatomic, weak) IBOutlet UIButton *showMoreButton;

// Titles

@property (nonatomic, weak) IBOutlet UILabel *actorNameTitleLabel;
@property (nonatomic, weak) IBOutlet UILabel *actorScreenNameTitleLabel;

// Values

@property (nonatomic, weak) IBOutlet UILabel *directorNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *actorNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *actorScreenNameLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupData];
}

- (void)setupData {
    _directorNameLabel.text = _viewModel.movieInfo.director;
    _actorNameLabel.text = _viewModel.movieInfo.actor;
    _actorScreenNameLabel.text = _viewModel.movieInfo.protagonist;
}

- (void)switchState {
    NSArray <UIView *> *views = @
    [
     _showMoreButton,
     _actorNameTitleLabel,
     _actorNameLabel,
     _actorScreenNameTitleLabel,
     _actorScreenNameLabel
     ];
    for (UIView *view in views) {
        view.hidden = !view.hidden;
    }
    _showMoreButton.enabled = !_showMoreButton.enabled;
}

- (IBAction)showMoreAction:(id)sender {
    [self switchState];
}

@end
