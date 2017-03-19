//
//  GenericRole.h
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>
#import "Nominatable.h"

NS_ASSUME_NONNULL_BEGIN

@interface GenericRole : MTLModel <MTLJSONSerializing, Nominatable>

@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, strong, readonly) NSDate *dateOfBirth;
@property (nonatomic, strong, readonly) NSString *biography;

@end

NS_ASSUME_NONNULL_END
