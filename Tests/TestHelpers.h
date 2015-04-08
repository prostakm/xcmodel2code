//
// Created by prostakm on 08/04/15.
// Copyright (c) 2015 animatedLogic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NSAttributeDescription *createAttributeDescription(NSString *attributeName, NSAttributeType aType)
{
    NSAttributeDescription *attributeDescription = [[NSAttributeDescription alloc] init];
    attributeDescription.attributeType = aType;
    attributeDescription.name = attributeName;

    return attributeDescription;
}






@interface TestHelpers : NSObject
@end