//
//  MovieRolesViewModel.h
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <Foundation/Foundation.h>

@class Director;
@class Actor;

NS_ASSUME_NONNULL_BEGIN

@interface MovieRolesViewModel : NSObject

@property (nonatomic, strong, readonly) NSString *director;
@property (nonatomic, strong, readonly) NSString *actor;
@property (nonatomic, strong, readonly) NSString *protagonist;

- (instancetype)initWithDirector:(Director *)director andActor:(Actor *)actor;

@end

NS_ASSUME_NONNULL_END
