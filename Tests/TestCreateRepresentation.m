//
//  TestCreateRepresentation.m
//  xcmodel2code
//
//  Created by prostakm on 06/04/15.
//  Copyright (c) 2015 animatedLogic. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import <CoreData/CoreData.h>
#import "MCCodeRepresentationModel.h"
#import "MCCodeEntityDetail.h"
#import "TestHelpers.h"


@interface TestCreateRepresentation : XCTestCase

@end

@implementation TestCreateRepresentation

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBuildCodeRepresentation
{
    NSManagedObjectModel *model = [[NSManagedObjectModel alloc] init];


    NSEntityDescription *testEntity = [[NSEntityDescription alloc] init];
    testEntity.name = @"TestEntity";
    testEntity.managedObjectClassName = @"MCTestEntity";

    NSMutableArray *testEntityProperties = [NSMutableArray array];

    NSAttributeDescription *nameAttribute = createAttributeDescription(@"name", NSStringAttributeType);
    NSAttributeDescription *dateAttribute = createAttributeDescription(@"startDate", NSDateAttributeType);

    [testEntityProperties addObject:nameAttribute];
    [testEntityProperties addObject:dateAttribute];

    [testEntity setProperties:testEntityProperties];

    [model setEntities:@[testEntity]];

    MCCodeRepresentationModel *codeModel = [MCCodeRepresentationModel codeModelFromDataModel:model];
    XCTAssert(codeModel.entityDefinitions.count == model.entities.count, @"Invalid number of entity definitions");
    XCTAssert(codeModel.entityDetails.count == model.entities.count, @"Invalid number of entity details section");


}
@end
