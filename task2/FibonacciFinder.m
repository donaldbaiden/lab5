#import "FibonacciFinder.h"

@implementation FibonacciFinder

- (NSArray<NSNumber *> *)findOddFibonacciUpTo:(NSInteger)limit {
    NSMutableArray<NSNumber *> *result = [NSMutableArray array];

    NSInteger prev = 1;
    NSInteger curr = 1;

    while (prev <= limit) {
        if (prev % 2 != 0) {
            [result addObject:@(prev)];
        }
        NSInteger next = prev + curr;
        prev = curr;
        curr = next;
    }

    return [result copy];
}

@end
