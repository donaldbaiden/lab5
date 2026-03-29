#import <Foundation/Foundation.h>
#import "StringCounter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        StringCounter *counter = [[StringCounter alloc] init];

        NSArray<NSString *> *words = @[@"hello", @"world", @"hi", @"objective", @"c"];

        NSInteger result = [counter countStringsLongerThan5:words];
        NSLog(@"Количество строк длиной более 5 символов: %ld", (long)result);

        [counter demonstrateArrayOperationsWithWords:words];
    }
    return 0;
}
