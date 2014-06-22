//
//  TMLYKPostModel.m
//  doubanYikeAPI
//
//  Created by im61 on 6/22/14.
//  Copyright (c) 2014 6133Studio.com. All rights reserved.
//

#import "TMLYKPostModel.h"
#import "TMLYKPhotoModel.h"
#import "TMLYKAuthorModel.h"

@implementation TMLYKPostModel

- (id)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    if (self) {
        _displayStyle = [dict[@"display_style"] integerValue];
        _date = dict[@"date"];
        _column = dict[@"column"];
        _shortURL = [NSURL URLWithString:dict[@"short_url"]];
        _isLiked = [dict[@"is_liked"] boolValue];
        _author = [[TMLYKAuthorModel alloc] initWithDictionary:dict[@"author"]];
        _URL = [NSURL URLWithString:dict[@"url"]];
        _abstract = dict[@"abstract"];
        _content = dict[@"content"];
        _originalURL = [NSURL URLWithString:dict[@"original_url"]];
        _title = dict[@"title"];
        _likeCount = [dict[@"like_count"] integerValue];
        _createdTime = dict[@"created_time"];
        _publishedTime = dict[@"published_time"];
        _type = dict[@"type"];
        _postID = dict[@"id"];
        _photos = [TMLYKPhotoModel photosWithDictionaryArray:dict[@"photos"]];
        _thumbs = [TMLYKPhotoModel photosWithDictionaryArray:dict[@"thumbs"]];
    }
    
    return self;
}
@end
