//
//  Router.h
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MovieDetailViewModel;

NS_ASSUME_NONNULL_BEGIN

@interface Router : NSObject

+ (void)pushDetailedFrom:(nullable UINavigationController *)navigationController withViewModel:(MovieDetailViewModel *)viewModel;

@end

NS_ASSUME_NONNULL_END
