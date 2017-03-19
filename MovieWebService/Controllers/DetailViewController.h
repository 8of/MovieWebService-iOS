//
//  DetailViewController.h
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieDetailViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (nonatomic, strong) MovieDetailViewModel *viewModel;

@end

NS_ASSUME_NONNULL_END
