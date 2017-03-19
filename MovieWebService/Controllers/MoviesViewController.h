//
//  MoviesViewController.h
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MoviesListViewModel.h"

@class MovieCell;

NS_ASSUME_NONNULL_BEGIN

@interface MoviesViewController : UITableViewController

@property (nonatomic, strong) MoviesListViewModel *viewModel;

@end

NS_ASSUME_NONNULL_END
