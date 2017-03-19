//
//  MovieCell.h
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <UIKit/UIKit.h>

@class MovieViewModel;

NS_ASSUME_NONNULL_BEGIN

/// cell for movie list table view
@interface MovieCell : UITableViewCell

- (void)setMovie:(MovieViewModel *)movie;

@end

NS_ASSUME_NONNULL_END
