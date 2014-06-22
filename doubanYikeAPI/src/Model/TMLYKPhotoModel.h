//
//  TMLYKPhotoModel.h
//  doubanYikeAPI
//
//  Created by im61 on 6/22/14.
//  Copyright (c) 2014 6133Studio.com. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TMLYKImageMetaModel;

@interface TMLYKPhotoModel : NSObject
@property (copy, nonatomic, readonly) TMLYKImageMetaModel *large;
@property (copy, nonatomic, readonly) TMLYKImageMetaModel *medium;
@property (copy, nonatomic, readonly) TMLYKImageMetaModel *small;
@property (copy, nonatomic, readonly) NSString *description;
@property (copy, nonatomic, readonly) NSString *tagName;
@property (assign, nonatomic, readonly) NSNumber *photoID;

- (instancetype)initWithDictionary:(NSDictionary *)dict;
+ (NSArray *)photosWithDictionaryArray:(NSArray *)dictArray;
@end
