//
//  Router.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "Router.h"
#import "ControllerFactory.h"
#import "MovieDetailViewModel.h"

@implementation Router

+ (void)pushDetailedFrom:(nullable UINavigationController *)navigationController withViewModel:(MovieDetailViewModel *)viewModel {
    UIViewController *vc = [ControllerFactory initDetailedWithViewModel:viewModel];
    [navigationController pushViewController:vc animated:YES];
}

@end
