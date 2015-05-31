//
// Created by prostakm on 12/04/15.
// Copyright (c) 2015 animatedLogic. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MCCodeDescription : NSObject

@property (strong) NSArray *codeLines;

+ (MCCodeDescription *)codeDescriptionFromAttributeDescription:(NSAttributeDescription *)description;
@end