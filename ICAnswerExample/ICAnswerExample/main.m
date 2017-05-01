//
//  main.m
//  ICAnswerExample
//
//  Created by Tieshow Daniels on 4/30/17.
//  Copyright © 2017 Ty Daniels. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {

//1. Whats wrong with this code?
    /*
     - The integer value was declared as a reference to an Int instead of an Int. Count should not be creating a reference in memory it is only used within a narrow scope, etc.
     - Alternative: count was initially declared as *count which created multiples of the value
     at index opposed to simply incrementing by one.
     */
    NSArray *array = @[@0, @1, @2, @3, @4, @5];
    __block NSInteger count = 0;
        [array enumerateObjectsUsingBlock:^(NSNumber *number, NSUInteger idx, BOOL *stop){
        
        if ([number compare:@2] == NSOrderedAscending){
            count++;
            stop = true;
        };
    }];

//2. What does the @dynamic keyword mean in objective-c and where is it typically used?
    /*
     - @dynamic means the gets/sets are not immediately created or needed at creation. It implies modification or implementation later on, within a child class. An example might be variables from the same instance, with several uses across a project. See exhibit A.
        
     - A:
         @property (retain) NSString * name;
         @dynamic name;
     
     - init {
        
        NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
        [dictionary setObject:@"Ed" forKey:@"name"];
        [dictionary setObject:@"John" forKey:@"name"];
     }
     */
        
//3. What is a property?
    //
    //
    //
    //4. What's wrong with this property definition
    //@property (nonatomic, strong) NSUInteger foobarInteger;
    //
    //
    //
    //5. Why are all UIKit outlets delared nonatomic?
    //i.e. @property (nonatomic, strong) IBOutlet UIButton *fooButton
    //
    //
    //
    //6. Whats wrong with this code?
    //@interface InstaClass
    //@property (strong, nonatomic) NSString *someInstacartString;
    //@end
    //@implementation InstaClass
    //
    //- (id)init {
    //    if (self = [super init]) {
    //        self.someInstacartString = @"Something";
    //    }
    //    return self;
    //}
    //
    //- (void)anInstacartMethod {
    //    void (^someBlock)() = ^{
    //        NSString *tempString = self.someInstacartString;
    //        NSLog(@"%@", tempString);
    //    };
    //}

    }
    
}
