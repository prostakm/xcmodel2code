//
// Created by prostakm on 08/04/15.
// Copyright (c) 2015 animatedLogic. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MCCodeEntityDetail : NSObject
@property (nonatomic, strong) NSArray *attributes;
@property (nonatomic, strong) NSArray *relationships;

- (id)initWithEntityDescription:(NSEntityDescription *)description;
@end