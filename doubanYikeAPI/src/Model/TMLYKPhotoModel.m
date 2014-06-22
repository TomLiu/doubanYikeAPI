//
//  TMLYKPhotoModel.m
//  doubanYikeAPI
//
//  Created by im61 on 6/22/14.
//  Copyright (c) 2014 6133Studio.com. All rights reserved.
//

#import "TMLYKPhotoModel.h"
#import "TMLYKImageMetaModel.h"

@implementation TMLYKPhotoModel

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    if (self) {
        _large = [[TMLYKImageMetaModel alloc] initWithDictionary:dict[@"large"]];
        _medium = [[TMLYKImageMetaModel alloc] initWithDictionary:dict[@"medium"]];
        _small = [[TMLYKImageMetaModel alloc] initWithDictionary:dict[@"small"]];
        _description = dict[@"description"];
        _tagName = dict[@"tag_name"];
        _photoID = dict[@"id"];
    }
    
    return self;
}

+ (NSArray *)photosWithDictionaryArray:(NSArray *)dictArray
{
    NSMutableArray *photos = [NSMutableArray array];
    
    for (NSDictionary *dict in dictArray) {
        TMLYKPhotoModel *photo = [[TMLYKPhotoModel alloc] initWithDictionary:dict];
        [photos addObject:photo];
    }

    return photos;
}

@end
