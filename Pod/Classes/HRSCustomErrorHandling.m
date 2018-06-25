//
//  HRSCustomErrorHandling.m
//  HRSCustomErrorHandling
//
//  Created by Sven Titgemeyer on 01.03.18.
//

#import <Foundation/Foundation.h>
#import "HRSCustomErrorHandling.h"

NS_ASSUME_NONNULL_BEGIN

@interface HRSCustomErrorHandling()

@property (strong, nonatomic, readwrite) NSArray<id<HRSErrorConfigurator>> *configurators;

@end

@implementation HRSCustomErrorHandling

- (instancetype)init {
    self = [super init];
    if (self) {
        _configurators = @[];
    }
    return self;
}

+ (instancetype)sharedInstance {
    static HRSCustomErrorHandling *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[HRSCustomErrorHandling alloc] init];
    });
    return instance;
}

- (void)addErrorConfigurator:(id<HRSErrorConfigurator>)configurator {
    NSMutableArray *mutableConfigurators = [self.configurators mutableCopy];
    [mutableConfigurators addObject:configurator];
    self.configurators = [mutableConfigurators copy];
}

@end

NS_ASSUME_NONNULL_END
