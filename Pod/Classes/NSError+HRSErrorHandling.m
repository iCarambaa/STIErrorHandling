//
//  NSError+HRSErrorHandling.m
//  HRSCustomErrorHandling
//
//  Created by Sven Titgemeyer on 16.02.18.
//

#import "NSError+HRSErrorHandling.h"

NS_ASSUME_NONNULL_BEGIN

@implementation NSError (HRSErrorHandling)

- (NSError *)addingObject:(nullable id)object forUserInfoKey:(NSString *)key {
    NSMutableDictionary<NSString *, id> *userInfo = [self.userInfo mutableCopy];
    if (!userInfo) {
        userInfo = [NSMutableDictionary new];
    }
    userInfo[key] = object;
    NSError *error = [NSError errorWithDomain:self.domain code:self.code userInfo:userInfo];
    return error;
}

@end

NS_ASSUME_NONNULL_END

