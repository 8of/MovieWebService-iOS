//
//  GenericRoleTests.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "GenericRoleTests.h"
#import "SampleDataHelper.h"

@implementation GenericRoleTests

- (void)testGenericRoleMap {
    GenericRole *role = [self map:GenericRole.class from:[self getMovieData][@"director"]];
    XCTAssertNotNil(role);
}

- (void)testGenericRoleProperties {
    GenericRole *role = [self map:GenericRole.class from:[self getMovieData][@"director"]];
    BOOL shouldTrueNominated = role.nominated;
    BOOL shouldTrueName = [role.name isEqualToString:@"Ben Affleck"];
    // ... also we can add check for other properties here, but lets keep it short
    // because it's not the production project
    XCTAssertTrue(shouldTrueNominated && shouldTrueName);
}

- (GenericRole *)map:(Class)modelClass from:(NSDictionary *)objectDictionary {
    NSError *error;
    GenericRole *object = [MTLJSONAdapter modelOfClass:modelClass
                                    fromJSONDictionary:objectDictionary
                                                 error:&error];
    return object;
}

- (NSDictionary *)getMovieData {
    return [SampleDataHelper getMovieData];
}

@end
