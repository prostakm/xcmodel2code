//
//  TestCodeLine.m
//  xcmodel2code
//
//  Created by prostakm on 09/04/15.
//  Copyright (c) 2015 animatedLogic. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "MCCodeLine.h"

@interface TestCodeLine : XCTestCase

@end

@implementation TestCodeLine


- (void)testExample
{
    MCCodeLine *codeLine = [[MCCodeLine alloc] init];
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample
{
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
