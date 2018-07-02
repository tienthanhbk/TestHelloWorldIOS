//
//  data_type.m
//  HelloWorld
//
//  Created by Bui Tien Thanh on 7/2/18.
//  Copyright © 2018 Bui Tien Thanh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "data_type.m"

int dataTypeBasic(){
    @autoreleasepool {
        // Primitive data type
        // C primitive
        int intNum = 16;
        float floatNum = 96.69;
        double doubleNum = 66.999;
        char character = 't';
        char string[50] = "Hello World!";
        char string2[50] = "Another string!";
        
        NSLog(@"Basic C data type: %d %f %g %c \n", intNum, floatNum, doubleNum, character);
        NSLog(@"String is litle different: %s %s\n", string, string2);
        strcat(string, string2);
        NSLog(@"Combine string: %s\n", string);
        
        // Derived types
        int intArray[5] = {0, 2, 4, 6, 8};
        int intArray2[5] = {};
        
        // Pointers
        int *intPointer = &intNum;
        char *charPointer = string;
        NSLog(@"Value that pointer point to: %d \n", *intPointer);
        NSLog(@"Character pointer as String: %s \n", charPointer);
        
        int *intArrPointer = &intArray;
        NSLog(@"Point to array: %d %d\n", *intArrPointer, *(++intArrPointer));
        
        int (*arrPointer)[5];
        arrPointer = &intArray;
        NSLog(@"Opt! It's not work because seconnd pointer in array pointer to unknow place: %d\n", *(arrPointer[1]));
        
        // Structure
        struct Book {
            char title[50];
            int count;
        };
        
        struct Book book1;
        book1.count = 100;
        strcat(book1.title, "Suoi nguon");
        struct Book book2 = book1;
        struct Book book3 = {"Bo gia", 50};
        
        // Union
        union MyUnion {
            int i;
            float f;
            char str[50];
        };
        union MyUnion unionExp = {10, 10.123, "My union test"};
        NSLog(@"Only one member can contain value at given time. In this case is first member unionExp.i:\n %d %f %s\n", unionExp.i, unionExp.f, unionExp.str);
        strcat(unionExp.str, "My union!");
        NSLog(@"Now is unionExp.str:\n %d %f %s\n", unionExp.i, unionExp.f, unionExp.str);
    }
    return 0;
}
