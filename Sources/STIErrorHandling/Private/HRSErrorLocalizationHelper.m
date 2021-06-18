#import "HRSErrorLocalizationHelper.h"

NS_ASSUME_NONNULL_BEGIN

@implementation HRSErrorLocalizationHelper

+ (NSString *)localizedTitleFromKey:(NSString *)key {
    NSBundle *uiKitBundle = [NSBundle bundleForClass:[UIResponder class]];
    return [uiKitBundle localizedStringForKey:key value:key table:nil];
}

+ (NSString *)okLocalization {
    NSString *title = [self localizedTitleFromKey:@"OK"];
    return title;
}

+ (NSString *)cancelLocalization {
    NSString *title = [self localizedTitleFromKey:@"Cancel"];
    return title;
}

@end

NS_ASSUME_NONNULL_END
