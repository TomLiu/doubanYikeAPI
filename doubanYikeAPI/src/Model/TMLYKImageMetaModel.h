//
//  TMLYKImageMetaModel.h
//  doubanYikeAPI
//
//  Created by im61 on 6/22/14.
//  Copyright (c) 2014 6133Studio.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TMLYKImageMetaModel : NSObject
@property (copy, nonatomic, readonly) NSURL *URL;
@property (assign, nonatomic, readonly) NSInteger width;
@property (assign, nonatomic, readonly) NSInteger height;

- (instancetype)initWithDictionary:(NSDictionary *)dict;
@end
