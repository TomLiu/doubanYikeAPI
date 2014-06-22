//
//  TMLYKPostModel.h
//  doubanYikeAPI
//
//  Created by im61 on 6/22/14.
//  Copyright (c) 2014 6133Studio.com. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TMLYKAuthorModel;

typedef NS_ENUM(NSUInteger, TMLYKDisplayStyle) {
    TMLYKDisplayStyleTitleAndSummary = 1001,
    TMLYKDisplayStyleTitleAndSummaryWithThumbnail,
    TMLYKDisplayStyleTitleAndThumbnail
};

@interface TMLYKPostModel : NSObject

@property (copy, nonatomic, readonly) NSString *date;
@property (copy, nonatomic, readonly) NSString *column;
@property (copy, nonatomic, readonly) NSURL *originalURL;
@property (copy, nonatomic, readonly) NSURL *shortURL;
@property (copy, nonatomic, readonly) TMLYKAuthorModel *author;
@property (copy, nonatomic, readonly) NSURL *URL;
@property (copy, nonatomic, readonly) NSString *abstract;
@property (copy, nonatomic, readonly) NSString *content;
@property (copy, nonatomic, readonly) NSArray *photos;
@property (copy, nonatomic, readonly) NSString *title;
@property (copy, nonatomic, readonly) NSArray *thumbs;
@property (copy, nonatomic, readonly) NSString *createdTime;
@property (copy, nonatomic, readonly) NSString *publishedTime;
@property (copy, nonatomic, readonly) NSString *type;
@property (copy, nonatomic, readonly) NSString *postID;

@property (assign, nonatomic, readonly) BOOL isLiked;
@property (assign, nonatomic, readonly) NSInteger likeCount;
@property (assign, nonatomic, readonly) TMLYKDisplayStyle displayStyle;

- (id)initWithDictionary:(NSDictionary *)dict;
@end
