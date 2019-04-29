//
//  main.m
//  WordEffect
//
//  Created by Luiz on 4/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        while (true) {
            // 255 unit long array of characters
            char inputChars[255];
            
            char inputNumber[2];
            NSUInteger number = 0;
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String: inputNumber];
            
            fgets(inputNumber, 2, stdin);
            number = [[NSString stringWithUTF8String:inputNumber] integerValue];
            
            NSLog(@"word: %@",inputString );
            NSLog(@"number: %lu", (unsigned long)number);
            
            switch (number) {
                case <#constant#>:
                    <#statements#>
                    break;
                    
                case <#constant#>:
                    <#statements#>
                    break;
                default:
                    break;
            }
            
        }
        
    }
    return 0;
}
