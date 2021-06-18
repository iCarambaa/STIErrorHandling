//
//  HRSErrorConfigurator.h
//  HRSCustomErrorHandling
//
//  Created by Sven Titgemeyer on 01.03.18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol STIErrorConfigurator <NSObject>

/**
 Called when the receiver is about to present or forward an error. The returned
 error is the error that is should actually be presented or forwarded.
 
 The default implementation of this method immediately returns the passed-in
 error.
 
 You can manipulate the passed-in error to change the presentation of the error
 in three ways:
 (1) return the error that was passed to the method to not change the error.
 (2) return nil to stop the error from being presented.
 (3) return a new error that will be presented instead.
 It is recommended to only touch the parameters of the error you really
 want to change and leave the rest as it is. E.g. when you want to change
 the localized text that is shown to the user, leave the error domain, the
 error code and all other keys from the `userInfo` dictionary as they are to
 give other responders in the chain a chance to identify the error.
 
 @param error The error the receiver wants to present or forward.
 
 @return The error you want the receiver to present or forward or nil if you
 do not want any error to be presented or forwarded.
 */
- (NSError * __nullable)willPresentError:(NSError *)error;

@end

NS_ASSUME_NONNULL_END
