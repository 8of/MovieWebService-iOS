//
//  MovieTests.m
//  MovieWebService
//
//  Created by Andrey Konstantinov on 15/01/2017.
//  Copyright © 2017 Tan, Michael (Agoda). All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Movie.h"
#import "SampleDataHelper.h"

@interface MovieTests : XCTestCase

@property (nonatomic, strong) Movie *movie;

@end

@implementation MovieTests

- (void)setUp {
    [super setUp];
    _movie = [self mapfrom:[SampleDataHelper getMovieData]];
}

- (void)tearDown {
    _movie = nil;
    [super tearDown];
}

- (void)testMovieMap {
    XCTAssertNotNil(_movie);
}

- (void)testDirector {
    XCTAssertNotNil(_movie.director);
}

- (void)testActors {
    BOOL actorsNotNil = _movie.actors != nil;
    BOOL actorsNotEmpty = _movie.actors.count > 0;
    XCTAssertTrue(actorsNotNil && actorsNotEmpty);
}

- (void)testName {
    XCTAssertTrue([_movie.name isEqualToString:@"Batman"]);
}

- (void)testFilmRating {
    XCTAssertEqual(_movie.ageRating, MovieRating_R);
}

- (void)testLanguage {
    BOOL languagesNotNil = _movie.languages != nil;
    BOOL languagesNotEmpty = _movie.languages.count > 0;
    XCTAssertTrue(languagesNotNil && languagesNotEmpty);
}

// ... also we can add check for other properties here, but lets keep it short
// because it's not the production project

- (Movie *)mapfrom:(NSDictionary *)objectDictionary {
    NSError *error;
    Movie *object = [MTLJSONAdapter modelOfClass:Movie.class
                                    fromJSONDictionary:objectDictionary
                                                 error:&error];
    return object;
}

@end
