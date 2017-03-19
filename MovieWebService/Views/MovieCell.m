//
//  MovieCell.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "MovieCell.h"
#import "MovieViewModel.h"

@interface MovieCell()

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *dateLabel;
@property (nonatomic, weak) IBOutlet UILabel *ageRatingLabel;
@property (nonatomic, weak) IBOutlet UILabel *ratingLabel;

@end

@implementation MovieCell

- (void)setMovie:(MovieViewModel *)movie {
    _nameLabel.text = movie.name;
    _dateLabel.text = movie.date;
    _ageRatingLabel.text = movie.ageRating;
    _ratingLabel.text = movie.rating;
}

@end
