//
//  TMLYKAuthorModel.m
//  doubanYikeAPI
//
//  Created by im61 on 6/22/14.
//  Copyright (c) 2014 6133Studio.com. All rights reserved.
//

#import "TMLYKAuthorModel.h"

@implementation TMLYKAuthorModel

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    if (self) {
        _name = dict[@"name"];
        _URL = [NSURL URLWithString:dict[@"url"]];
        _avatar = [NSURL URLWithString:dict[@"avatar"]];
        _alt = dict[@"alt"];
        _authorID = dict[@"id"];
        _authorUID = dict[@"uid"];
    }
    
    return self;
}

@end
