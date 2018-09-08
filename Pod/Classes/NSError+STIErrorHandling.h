//
//  NSError+HRSErrorHandling.h
//  HRSCustomErrorHandling
//
//  Created by Sven Titgemeyer on 16.02.18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class HRSErrorRecoveryAttempter;

@interface NSError (STIErrorHandling)

/**
 Initializes a new `NSError` object with `object` added to the `userInfo` dictionary.
 
 If `userInfo` is `nil` this method will initialize a new dictionary.

 @param object the object corresponding to `key`.
 @param key the key for` object`.
 @return A new `NSError` with the same contents as before and the added `object` for `key`.
 */
- (NSError *)addingObject:(nullable id)object forUserInfoKey:(NSString *)key NS_SWIFT_NAME(adding(_:forUserInfoKey:));

@end
NS_ASSUME_NONNULL_END

