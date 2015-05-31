//
//  TestAttributeCodeDescription.m
//  xcmodel2code
//
//  Created by prostakm on 12/04/15.
//  Copyright (c) 2015 animatedLogic. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "MCCodeDescription.h"

@interface TestAttributeCodeDescription : XCTestCase

@end

@implementation TestAttributeCodeDescription

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testCreateCodeDescription
{

    NSAttributeDescription *attributeDescription = [[NSAttributeDescription alloc] init];
    attributeDescription.attributeType = NSStringAttributeType;
    attributeDescription.name = @"name";

    NSUInteger originalLineNumber = 3;

    MCCodeDescription *codeDescription = [MCCodeDescription codeDescriptionFromAttributeDescription:attributeDescription];


    XCTAssert(codeDescription.codeLines.count == originalLineNumber, @"wrong number of code line");
}

@end
