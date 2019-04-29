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
       
        char inputChars[255];
        char inputNumber[255];
        while (true) {
            // 255 unit long array of characters
            
            printf("Input a string: ");
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithCString:inputChars encoding: NSASCIIStringEncoding ];
            inputString = [inputString stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
            
            NSInteger number = 0;
            
            printf("Input a number(1-6): ");
            fgets(inputNumber, 255, stdin);
            number = [[NSString stringWithUTF8String:inputNumber] integerValue];
            
            NSLog(@"word: %@",inputString );
            NSLog(@"number: %ld", (long)number);
            
            switch (number) {
                    
                case 1:
                    inputString = [inputString uppercaseString ];
                    NSLog(@"%@", inputString);
                    break;
                    
                case 2:
                    inputString = [inputString lowercaseString ];
                    NSLog(@"%@", inputString);
                    break;
                    
                case 3: {
                    
//                   NSUInteger value = [inputString integerValue];
                    NSNumberFormatter *formatter = [NSNumberFormatter new];
                    NSNumber *value = [formatter numberFromString:inputString];
                    if(value == nil){
                        NSLog(@"%@", @"Wrong value. I cannot convert into a number");
                    } else {
                        NSLog(@"%lu", [value integerValue]);
                    }
                    
                    break;
                }
                case 4: {
                    inputString = [NSString stringWithFormat: @"%@, eh!", inputString];
                    NSLog(@"%@", inputString);
                    break;
                }
                case 5:
                    if([inputString characterAtIndex: inputString.length -1] == '?'){
                        inputString = @"I don't know";
                        
                    } else if(([inputString characterAtIndex: inputString.length -1] == '!')){
                        inputString = @"Whoa, calm down!";
                    }
                    NSLog(@"%@", inputString);
                    break;
                    
                case 6:
                    inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString: @"-"];
                    NSLog(@"%@", inputString);
                    break;
                    
                default:
                    
                    break;
                
            }
            
        }
        
    }
    return 0;
}
