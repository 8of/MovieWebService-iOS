//
//  ControllerFactory.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "ControllerFactory.h"
#import "DetailViewController.h"
#import "MovieDetailViewModel.h"

@implementation ControllerFactory

+ (UIViewController *)initDetailedWithViewModel:(MovieDetailViewModel *)viewModel {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DetailViewController *vc = [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([DetailViewController class])];
    vc.viewModel = viewModel;
    return vc;
}

@end
