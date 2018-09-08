//
//  HRSCustomErrorHandling.m
//  HRSCustomErrorHandling
//
//  Created by Sven Titgemeyer on 01.03.18.
//

#import <Foundation/Foundation.h>
#import "STIErrorHandling.h"

NS_ASSUME_NONNULL_BEGIN

@interface STIErrorHandling()

@property (strong, nonatomic, readwrite) NSArray<id<STIErrorConfigurator>> *configurators;

@end

@implementation STIErrorHandling

- (instancetype)init {
    self = [super init];
    if (self) {
        _configurators = @[];
    }
    return self;
}

+ (instancetype)sharedInstance {
    static STIErrorHandling *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[STIErrorHandling alloc] init];
    });
    return instance;
}

- (void)addErrorConfigurator:(id<STIErrorConfigurator>)configurator {
    NSMutableArray *mutableConfigurators = [self.configurators mutableCopy];
    [mutableConfigurators addObject:configurator];
    self.configurators = [mutableConfigurators copy];
}

@end

NS_ASSUME_NONNULL_END
