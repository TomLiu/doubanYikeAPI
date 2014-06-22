//
//  TMLYKImageMetaModel.m
//  doubanYikeAPI
//
//  Created by im61 on 6/22/14.
//  Copyright (c) 2014 6133Studio.com. All rights reserved.
//

#import "TMLYKImageMetaModel.h"

@implementation TMLYKImageMetaModel

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    if (self) {
        _URL = [NSURL URLWithString:dict[@"url"]];
        _width = [dict[@"width"] integerValue];
        _height = [dict[@"height"] integerValue];
    }
    
    return self;
}

@end
