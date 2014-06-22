//
//  TMLYKAuthorModel.h
//  doubanYikeAPI
//
//  Created by im61 on 6/22/14.
//  Copyright (c) 2014 6133Studio.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TMLYKAuthorModel : NSObject
@property (copy, nonatomic, readonly) NSString *name;
@property (copy, nonatomic, readonly) NSURL *URL;
@property (copy, nonatomic, readonly) NSURL *avatar;
@property (copy, nonatomic, readonly) NSString *alt;
@property (copy, nonatomic, readonly) NSString *authorID;
@property (copy, nonatomic, readonly) NSString *authorUID;

- (instancetype)initWithDictionary:(NSDictionary *)dict;
@end
