#import <Foundation/Foundation.h>
#import "FibonacciFinder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FibonacciFinder *finder = [[FibonacciFinder alloc] init];

        NSLog(@"Введите число A:");
        NSInteger A = 0;
        scanf("%ld", &A);

        NSArray<NSNumber *> *oddFibs = [finder findOddFibonacciUpTo:A];

        NSLog(@"Нечётные числа Фибоначчи, не превышающие %ld:", A);
        for (NSNumber *num in oddFibs) {
            printf("%ld ", (long)[num integerValue]);
        }
        printf("\n");
        NSLog(@"Всего найдено: %lu", (unsigned long)oddFibs.count);
    }
    return 0;
}

