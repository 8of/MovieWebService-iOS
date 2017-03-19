//
//  MovieDetailViewModel.h
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <Foundation/Foundation.h>

@class MovieRolesViewModel;
@class Actor;
@class Director;

NS_ASSUME_NONNULL_BEGIN

@interface MovieDetailViewModel : NSObject

@property (nonatomic, strong, readonly) MovieRolesViewModel *movieInfo;

-(instancetype)initWithDirector:(Director *)director andActors:(NSArray <Actor *> *)actors;

@end

NS_ASSUME_NONNULL_END
