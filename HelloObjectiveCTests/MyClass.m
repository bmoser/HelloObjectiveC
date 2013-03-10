//
//  MyClass.m
//  HelloObjectiveC
//
//  Created by Basil Moser on 3/9/13.
//  Copyright (c) 2013 Basil Moser. All rights reserved.
//

#import "MyClass.h"
#import "MyClass+Additions.h"

@implementation MyClass

- (id)init
{
    self = [super init];
    
    if (self)
    {
        self.firstName = nil;
        
    }
    
    return self;
}

- (id)initWithString:(NSString *)aName
{
    self = [super init];
    if (self)
    {
        name = [aName copy];
    }
    
    return self;
}

+ (MyClass *)createMyClassWithString:(NSString *)aName
{
    //NSString *myString = @"My String";
    //NSString *anotherString = [NSString stringWithFormat:@"%d %@", 1, @"String"];
    
    //NSString *fromCString = [NSString stringWithCString:"A C String" encoding:NSASCIIStringEncoding];
    
    return [[self alloc] initWithString:aName];
}

- (void)createPersonFirstName:(NSString *)firstName secondName:(NSString *)secondName
{
    NSLog(@"%@", firstName);
    NSLog(@"%@", secondName);
    int i = [self magicNumer];
    NSLog(@"%d", i);
}

- (int)magicNumer
{
    return 23;
}

// Custom getter
- (NSObject *)nonatomicObject
{
    return _nonatomicObject;
}

// Custom setter
/*
- (void)nonatomicObject(NSObject *)object
{
    
}*/

// Called before freeing up the memory
- (void)dealloc
{
    NSLog(@"XYZPerson is being deallocated");
}

// Protocol method
- (void)protocolMethod
{
    
}

@end
