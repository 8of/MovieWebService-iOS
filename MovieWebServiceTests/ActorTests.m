//
//  ActorTests.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import "GenericRoleTests.h"
#import "Actor.h"

@interface ActorTests : GenericRoleTests

@property (nonatomic, strong) Actor *actor;

@end

@implementation ActorTests

- (void)setUp {
    [super setUp];
    NSArray *cast = [self getMovieData][@"cast"];
    _actor = (Actor *)[self map:Actor.class from:cast.firstObject];
}

- (void)tearDown {
    _actor = nil;
    [super tearDown];
}

- (void)testActorMap {
    XCTAssertNotNil(_actor);
}

- (void)testActorScreenName {
    XCTAssertTrue([_actor.screenName isEqualToString:@"batman"]);
}

@end
