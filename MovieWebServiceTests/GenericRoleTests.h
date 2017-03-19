//
//  GenericRoleTests.h
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GenericRole.h"

@interface GenericRoleTests : XCTestCase

- (GenericRole *)map:(Class)modelClass from:(NSDictionary *)objectDictionary;
- (NSDictionary *)getMovieData;

@end
