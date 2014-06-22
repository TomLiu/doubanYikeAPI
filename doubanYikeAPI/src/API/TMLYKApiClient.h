//
//  TMLYKApiClient.h
//  doubanYikeAPI
//
//  Created by im61 on 6/22/14.
//  Copyright (c) 2014 6133Studio.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TMLYKApiClient : NSObject

+ (instancetype)sharedClient;

- (void)getLatestPostsSince:(NSString *)sinceID
             showFullFormat:(BOOL)showFullFormat
                    success:(void (^)(NSString *date, NSArray *posts))success
                    failure:(void (^)(NSError *error))failure;

- (void)getPostsOn:(NSString *)date
    showFullFormat:(BOOL)showFullFormat
           success:(void (^)(NSString *date, NSArray *posts))success
           failure:(void (^)(NSError *error))failure;
@end
