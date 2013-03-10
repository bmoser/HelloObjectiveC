//
//  HelloObjectiveCTests.m
//  HelloObjectiveCTests
//
//  Created by Basil Moser on 3/9/13.
//  Copyright (c) 2013 Basil Moser. All rights reserved.
//

#import "HelloObjectiveCTests.h"
#import "MyClass.h"
#import "MyClass+Additions.h"

@implementation HelloObjectiveCTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    //NSString *myString = @"My String";
    //NSString *anotherString = [NSString stringWithFormat:@"%d %@", 1, @"String"];
    
    //STFail(@"Unit tests are not implemented yet in HelloObjectiveCTests");
    
    MyClass *m = [[MyClass alloc] init];
    int i = [m magicNumer];
    NSLog(@"MyFirst Test output: %d", i);
    
    if (m == nil)
    {
        NSLog(@"Object not initialized!");
    }
    NSDate *myDate = [NSDate date];
    NSLog(@"Date: %@", myDate);
    
    //[myDate dateWithCalendarFormat:@"2000-01-01" timeZone:NSTimeZone];
    //[m setBirth:@"1983-09-05"];
    m.firstName = @"asdf";
    
    // Category
    NSString *str  = @"HelloCategory";
    [str reverseName];
    
    
    NSNumber *someNumber = [[NSNumber alloc] initWithInt:22];
    NSNumber *numberTwo = [NSNumber numberWithBool:TRUE];
    
    NSInteger nsInt = 6;
    nsInt = nsInt *3;
    NSLog(@"%li", (long)nsInt);
    
    // Array
    NSArray *someArray =
    [NSArray arrayWithObjects:m, i, @"Hello World", nil];
    
    NSUInteger size = [someArray count];
    
    for (int i = 0; i < size; i++)
    {
        NSLog(@"Item %i is: %@", i, [someArray objectAtIndex:i]);
    }
    
    NSMutableArray *mutableArray = [NSMutableArray array];
    [mutableArray addObject:@"gamma"];
    [mutableArray addObject:@"alpha"];
    [mutableArray addObject:@"beta"];
    [mutableArray replaceObjectAtIndex:0 withObject:@"epsilon"];
    
    [mutableArray sortUsingSelector:@selector(caseInsensitiveCompare:)];
    
    [self printArrayToConsole:mutableArray];
    
    // must end with nil!
    NSSet *simpleSet = [NSSet setWithObjects:@"Hello, World!", @42, m, nil];
    NSUInteger setCount = [simpleSet count];
    NSLog(@"%lu", (unsigned long)setCount);
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                m, @"anObject",
                                @"Hello, World!", @"helloString",
                                @42, @"magicNumber",
                                setCount, @"aValue",
                                nil];
    
    // NSMutableDirectory
    //[dictionary setObject:@"another string" forKey:@"secondString"];
    //[dictionary removeObjectForKey:@"anObject"];
    
    // File write
    //NSURL *fileURL =
    //NSArray *arrayFile = @[@"first", @"second", @"third"];
    //BOOL success = [arrayFile writeToURL:fileURL atomically:YES];
    //if (!success) {
        // an error occured...
    //}
    
    // Blocks aka. callbacks
    simpleBlock();
}

void (^simpleBlock)(void) = ^{
    NSLog(@"This is a block");
};


- (void) printArrayToConsole:(NSMutableArray*) myArray
{
    NSUInteger size = [myArray count];
    
    for (int i = 0; i < size; i++)
    {
        NSLog(@"Item %i is: %@", i, [myArray objectAtIndex:i]);
    }
    
    for (id eachObject in myArray)
    {
        NSLog(@"Object: %@", eachObject);
    }
    
}
@end
