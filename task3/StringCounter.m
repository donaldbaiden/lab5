#import "StringCounter.h"

@implementation StringCounter

- (void)printArray:(NSArray<NSString *> *)array label:(NSString *)label {
    NSLog(@"%@: %@", label, array);
}

- (NSInteger)countStringsLongerThan5:(NSArray<NSString *> *)words {
    NSInteger count = 0;
    for (NSString *word in words) {
        if (word.length > 5) {
            count++;
        }
    }
    return count;
}

- (void)demonstrateArrayOperationsWithWords:(NSArray<NSString *> *)words {
    NSLog(@"\n=== Демонстрация операций с массивами ===");

    [self printArray:words label:@"а) Исходный NSArray"];

    NSLog(@"г) Кол-во элементов в NSArray: %lu", (unsigned long)[words count]);

    NSMutableArray<NSString *> *mutable = [NSMutableArray array];
    NSLog(@"б) Создан пустой NSMutableArray: %@", mutable);

    for (NSString *w in words) {
        [mutable addObject:w];
    }
    [self printArray:mutable label:@"в) NSMutableArray после копирования элементов"];

    NSLog(@"г) Кол-во элементов в NSMutableArray: %lu", (unsigned long)[mutable count]);

    [mutable addObject:@"swift"];
    [self printArray:mutable label:@"д) После addObject:@\"swift\""];

    [mutable insertObject:@"xcode" atIndex:2];
    [self printArray:mutable label:@"е) После insertObject:@\"xcode\" atIndex:2"];

    [mutable removeLastObject];
    [self printArray:mutable label:@"ё) После removeLastObject"];

    [mutable removeObjectAtIndex:1];
    [self printArray:mutable label:@"ж) После removeObjectAtIndex:1"];

    [mutable removeAllObjects];
    NSLog(@"з) После removeAllObjects: %@", mutable);
}

@end
