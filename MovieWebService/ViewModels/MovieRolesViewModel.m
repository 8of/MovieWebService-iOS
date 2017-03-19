//
//  MovieRolesViewModel.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "MovieRolesViewModel.h"
#import "Director.h"
#import "Actor.h"

@implementation MovieRolesViewModel

- (instancetype)initWithDirector:(Director *)director andActor:(Actor *)actor {
    self = [super init];
    if (self) {
        _director = director.name;
        _actor = actor.name;
        _protagonist = actor.screenName;
    }
    return self;
}

@end
