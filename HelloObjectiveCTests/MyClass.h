//
//  MyClass.h
//  HelloObjectiveC
//
//  Created by Basil Moser on 3/9/13.
//  Copyright (c) 2013 Basil Moser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass+Additions.h"
#import "MyProtocol.h"


@interface MyClass : NSObject <MyProtocol>
{
    int count;
    id data;
    NSString* name;
    
    NSObject* __weak weakVariable;
}


@property (copy) NSString *firstName;
@property (copy) NSString *secondName;
@property NSDate *birth;
@property (nonatomic) NSObject *nonatomicObject;



//+(id)person;

- (id)initWithString:(NSString*)aName;
- (void)createPersonFirstName:(NSString*)firstName secondName:(NSString*)secondName;
- (int)magicNumer;

+ (MyClass*)createMyClassWithString:(NSString*)aName;

@end
