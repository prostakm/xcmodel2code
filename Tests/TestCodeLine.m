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


- (void)testLine
{
    MCCodeLine *codeLine = [[MCCodeLine alloc] init];

    XCTAssert([codeLine.toString isEqualToString:@";"], @"wrong string representation");
}

@end
