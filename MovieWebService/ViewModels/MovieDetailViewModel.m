//
//  MovieDetailViewModel.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "MovieDetailViewModel.h"
#import "MovieRolesViewModel.h"

@implementation MovieDetailViewModel

-(instancetype)initWithDirector:(Director *)director andActors:(NSArray <Actor *> *)actors
{
    self = [super init];
    if (self) {
        _movieInfo = [[MovieRolesViewModel alloc] initWithDirector:director andActor:actors.firstObject];
    }
    return self;
}

@end
