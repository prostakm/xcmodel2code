//
//  TestCodeEntityDetail.m
//  xcmodel2code
//
//  Created by prostakm on 08/04/15.
//  Copyright (c) 2015 animatedLogic. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "TestHelpers.h"
#import "MCCodeEntityDetail.h"

@interface TestCodeEntityDetail : XCTestCase

@end

@implementation TestCodeEntityDetail

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testEntityDetails
{
    NSEntityDescription *testEntity = [[NSEntityDescription alloc] init];
    testEntity.name = @"TestEntity";
    testEntity.managedObjectClassName = @"MCTestEntity";

    NSMutableArray *testEntityProperties = [NSMutableArray array];

    NSAttributeDescription *nameAttribute = createAttributeDescription(@"name", NSStringAttributeType);
    NSAttributeDescription *dateAttribute = createAttributeDescription(@"startDate", NSDateAttributeType);

    [testEntityProperties addObject:nameAttribute];
    [testEntityProperties addObject:dateAttribute];
    [testEntity setProperties:testEntityProperties];

    MCCodeEntityDetail *detail = [[MCCodeEntityDetail alloc] initWithEntityDescription:testEntity];

    XCTAssert(detail.attributes.count == testEntity.attributesByName.count, @"wrong nmber off attributes");
    XCTAssert(detail.relationships.count == testEntity.relationshipsByName.count, @"wrong number of relationships");

}


@end
