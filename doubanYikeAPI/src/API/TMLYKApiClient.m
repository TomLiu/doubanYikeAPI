//
//  TMLYKApiClient.m
//  doubanYikeAPI
//
//  Created by im61 on 6/22/14.
//  Copyright (c) 2014 6133Studio.com. All rights reserved.
//

#import "AFHTTPClient.h"
#import "TMLYKApiClient.h"
#import "TMLYKPostModel.h"

static NSString * const KTMLBaseURL = @"http://moment.douban.com/api/stream/";

@interface TMLYKApiClient ()

@property (nonatomic, strong) AFHTTPClient *httpClient;

@end

@implementation TMLYKApiClient

+ (instancetype)sharedClient
{
    static TMLYKApiClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[TMLYKApiClient alloc] init];
    });
    
    return _sharedClient;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _httpClient = [AFHTTPClient clientWithBaseURL:[NSURL URLWithString:KTMLBaseURL]];
    }
    
    return self;
}

- (void)getLatestPostsSince:(NSString *)sinceID
             showFullFormat:(BOOL)showFullFormat
                    success:(void (^)(NSString *date, NSArray *posts))success
                    failure:(void (^)(NSError *error))failure
{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"alt"] = @"json";

    if (showFullFormat) {
        params[@"format"] = @"full";
    }
    
    if (sinceID) {
        params[@"since_id"] = sinceID;
    }
    
    [_httpClient getPath:@"current"
              parameters:params
                 success:^(AFHTTPRequestOperation *operation, id responseObject)
    {
        NSError *error;
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject
                                                             options:NSJSONReadingMutableContainers
                                                               error:&error];
        
        if (error && failure) {
            failure(error);
            return;
        }
        
        NSString *date = dict[@"date"];
        NSArray *postDicts = dict[@"posts"];
        NSMutableArray *posts = [NSMutableArray array];
        
        for (NSDictionary *postDict in postDicts) {
            TMLYKPostModel *post = [[TMLYKPostModel alloc] initWithDictionary:postDict];
            [posts addObject:post];
        }
        
        if (success) {
            success(date, posts);
        }
    }
                 failure:^(AFHTTPRequestOperation *operation, NSError *error)
    {
        if (error && failure) {
            failure(error);
        }
    }];
}

- (void)getPostsOn:(NSString *)date
    showFullFormat:(BOOL)showFullFormat
           success:(void (^)(NSString *date, NSArray *posts))success
           failure:(void (^)(NSError *error))failure
{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"alt"] = @"json";
    
    if (showFullFormat) {
        params[@"format"] = @"full";
    }
 
    NSString *path = [NSString stringWithFormat:@"date/%@", date];
    [_httpClient getPath:path
              parameters:params
                 success:^(AFHTTPRequestOperation *operation, id responseObject)
    {
        NSError *error;
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject
                                                             options:NSJSONReadingMutableContainers
                                                               error:&error];
        
        if (error && failure) {
            failure(error);
            return;
        }
        
        NSString *date = dict[@"date"];
        NSArray *postDicts = dict[@"posts"];
        NSMutableArray *posts = [NSMutableArray array];
        
        for (NSDictionary *postDict in postDicts) {
            TMLYKPostModel *post = [[TMLYKPostModel alloc] initWithDictionary:postDict];
            [posts addObject:post];
        }
        
        if (success) {
            success(date, posts);
        }
    }
                 failure:^(AFHTTPRequestOperation *operation, NSError *error)
    {
        if (error && failure) {
            failure(error);
        }
    }];
}
@end
