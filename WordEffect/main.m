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
        
        BOOL test = YES;
        while (test) {
          
            
            printf("Input a string: ");
            fgets(inputChars, 255, stdin);
            NSMutableString *inputString = [NSMutableString stringWithCString:inputChars encoding: NSASCIIStringEncoding ];
            inputString = [[NSMutableString alloc]initWithString: [inputString stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet]];
            
            NSInteger number = 0;
            
            printf("Input a number(1-8) Choose 9 to exit: ");
            fgets(inputNumber, 255, stdin);
            number = [[NSMutableString stringWithUTF8String:inputNumber] integerValue];
            
            NSLog(@"word: %@",inputString );
            NSLog(@"number: %ld", (long)number);
            
            switch (number) {
                    
                case 1:
                    inputString =  [[NSMutableString alloc] initWithString:[inputString uppercaseString ]] ;
                    NSLog(@"%@", inputString);
                    break;
                    
                case 2:
                    inputString =  [[NSMutableString alloc] initWithString:[inputString lowercaseString ]];
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
                    inputString =  [[NSMutableString alloc] initWithString:[NSString stringWithFormat: @"%@, eh!", inputString]];
                    NSLog(@"%@", inputString);
                    break;
                }
                case 5:
                    if([inputString characterAtIndex: inputString.length -1] == '?'){
                        inputString = [[NSMutableString alloc] initWithString: @"I don't know"];
                        
                    } else if(([inputString characterAtIndex: inputString.length -1] == '!')){
                        inputString = [[NSMutableString alloc] initWithString: @"Whoa, calm down!"];
                    }
                    NSLog(@"%@", inputString);
                    break;
                    
                case 6:
                    inputString = [[NSMutableString alloc] initWithString:[inputString stringByReplacingOccurrencesOfString:@" " withString: @"-"]];
                    NSLog(@"%@", inputString);
                    break;
                    
                    
                case 7: {
                    NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
                    
                   
                    for (NSString *vowel in vowels) {
                        inputString = [[NSMutableString alloc] initWithString:[inputString stringByReplacingOccurrencesOfString:vowel withString:  [vowel uppercaseString]]];
                    }
                    NSLog(@"%@", inputString);
                    break;
                }
                    
                case 8:
                    inputString = [[NSMutableString alloc] initWithString:[inputString stringByReplacingOccurrencesOfString:@" " withString:@"*"]];
                    NSLog(@"%@", inputString);
                    break;
                case 9:
                    test = NO;
                    break;
                
            }
            
        }
        
    }
    return 0;
}
