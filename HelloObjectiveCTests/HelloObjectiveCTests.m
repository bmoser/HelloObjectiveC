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

// Seite 85

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
    
    
}

@end
