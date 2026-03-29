#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StringCounter : NSObject

- (NSInteger)countStringsLongerThan5:(NSArray<NSString *> *)words;
- (void)demonstrateArrayOperationsWithWords:(NSArray<NSString *> *)words;

@end

NS_ASSUME_NONNULL_END
