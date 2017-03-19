//
//  Actor.h
//  MovieWebService
//
//  Created by Andrey Konstantinov on 14/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "GenericRole.h"

NS_ASSUME_NONNULL_BEGIN

@interface Actor : GenericRole

@property (nonatomic, strong, readonly) NSString *screenName;

@end

NS_ASSUME_NONNULL_END
