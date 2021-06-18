//
//	Licensed under the Apache License, Version 2.0 (the "License");
//	you may not use this file except in compliance with the License.
//	You may obtain a copy of the License at
//
//	http://www.apache.org/licenses/LICENSE-2.0
//
//	Unless required by applicable law or agreed to in writing, software
//	distributed under the License is distributed on an "AS IS" BASIS,
//	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//	See the License for the specific language governing permissions and
//	limitations under the License.
//

#import "UIResponder+STICustomErrorPresentation.h"
#import "NSError+STIErrorHandling.h"
#import "STIErrorCoalescingQueue.h"
#import "STIErrorPresenter.h"
#import "STIErrorRecoveryAttempter.h"
#import "STIErrorConfigurator.h"
@import UIKit;

@interface STIErrorHandling : NSObject

/**
 The configurators which will be called before the error is forwarded to the responder chain.
 
 The `configurators` are a easy way to process errors before handing control over to the responder chain.
 They can be used to ensure that lower level API Errors are always wrapped into meaningful errors or to
 ensure no "user cancelled" errors are bubbled up the chain.
 
 New configurators can be added by calling `-[STIErrorHandling addErrorConfiguratorBeforeChain:]`.
 */
@property (strong, nonatomic, readonly) NSArray<id<STIErrorConfigurator>> * _Nonnull configurators;

/**
 The presentingViewController is used to present the AlertController.
 
 If it's not set, the application's keyWindow rootViewController is used.
 */
@property (nonatomic, nullable, weak) UIViewController *presentingViewController;

/**
 Singleton used for configuration. All configuration is optional.

 @return Singleton configuration object.
 */
+ (instancetype _Nonnull)sharedInstance;

/**
 Adds an error configurator which will be called before forwarding the error to the responder chain.
 
 Multiple added configurators will be called in the order they have been added.

 @param configurator A configurator which can manipulate an error.
 */
- (void)addErrorConfigurator:(id<STIErrorConfigurator>_Nonnull)configurator;

@end
