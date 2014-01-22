//
//  NSString+MorseCode.m
//  Morse Torch
//
//  Created by Andrew Rodgers on 1/20/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import "NSString+MorseCode.h"

@implementation NSString (MorseCode)

- (NSArray *) symbolsForLetter
{
    if ([NSString isAlphaNumeric:self])
    {
        NSMutableArray *tempArray = [NSMutableArray new];
        for (int i = 0; i < self.length; i++)
        {
            [tempArray addObject:[self symbolForSingleLetter:[self substringWithRange:NSMakeRange(i, 1)]]];
        }
        return ([NSArray arrayWithArray:tempArray]); //Gives back a morse code version of the string
    }
    return nil; //Returns a nil string if it can't convert the whole string
}

- (NSString *) symbolForSingleLetter:(NSString *)letter //Returns the morse code for a letter
{
    letter = [letter uppercaseString];
    if (!([letter rangeOfString:@"A"].location == NSNotFound))
    {
        return @".-";
    }
    else if (!([letter rangeOfString:@"B"].location == NSNotFound))
    {
        return @"-...";
    }
    else if (!([letter rangeOfString:@"C"].location == NSNotFound))
    {
        return @"-.-.";
    }
    else if (!([letter rangeOfString:@"D"].location == NSNotFound))
    {
        return @"-..";
    }
    else if (!([letter rangeOfString:@"E"].location == NSNotFound))
    {
        return @".";
    }
    else if (!([letter rangeOfString:@"F"].location == NSNotFound))
    {
        return @"..-.";
    }
    else if (!([letter rangeOfString:@"G"].location == NSNotFound))
    {
        return @"--.";
    }
    else if (!([letter rangeOfString:@"H"].location == NSNotFound))
    {
        return @"....";
    }
    else if (!([letter rangeOfString:@"I"].location == NSNotFound))
    {
        return @"..";
    }
    else if (!([letter rangeOfString:@"J"].location == NSNotFound))
    {
        return @".---";
    }
    else if (!([letter rangeOfString:@"K"].location == NSNotFound))
    {
        return @"-.-";
    }
    else if (!([letter rangeOfString:@"L"].location == NSNotFound))
    {
        return @".-..";
    }
    else if (!([letter rangeOfString:@"M"].location == NSNotFound))
    {
        return @"--";
    }
    else if (!([letter rangeOfString:@"N"].location == NSNotFound))
    {
        return @"-.";
    }
    else if (!([letter rangeOfString:@"O"].location == NSNotFound))
    {
        return @"---";
    }
    else if (!([letter rangeOfString:@"P"].location == NSNotFound))
    {
        return @".--.";
    }
    else if (!([letter rangeOfString:@"Q"].location == NSNotFound))
    {
        return @"--.-";
    }
    else if (!([letter rangeOfString:@"R"].location == NSNotFound))
    {
        return @".-.";
    }
    else if (!([letter rangeOfString:@"S"].location == NSNotFound))
    {
        return @"...";
    }
    else if (!([letter rangeOfString:@"T"].location == NSNotFound))
    {
        return @"-";
    }
    else if (!([letter rangeOfString:@"U"].location == NSNotFound))
    {
        return @"..-";
    }
    else if (!([letter rangeOfString:@"V"].location == NSNotFound))
    {
        return @"...-";
    }
    else if (!([letter rangeOfString:@"W"].location == NSNotFound))
    {
        return @".--";
    }
    else if (!([letter rangeOfString:@"X"].location == NSNotFound))
    {
        return @"-..-";
    }
    else if (!([letter rangeOfString:@"Y"].location == NSNotFound))
    {
        return @"-.--";
    }
    else if (!([letter rangeOfString:@"Z"].location == NSNotFound))
    {
        return @"--..";
    }
    else if (!([letter rangeOfString:@"1"].location == NSNotFound))
    {
        return @".----";
    }
    else if (!([letter rangeOfString:@"2"].location == NSNotFound))
    {
        return @"..---";
    }
    else if (!([letter rangeOfString:@"3"].location == NSNotFound))
    {
        return @"...--";
    }
    else if (!([letter rangeOfString:@"4"].location == NSNotFound))
    {
        return @"....-";
    }
    else if (!([letter rangeOfString:@"5"].location == NSNotFound))
    {
        return @".....";
    }
    else if (!([letter rangeOfString:@"6"].location == NSNotFound))
    {
        return @"-....";
    }
    else if (!([letter rangeOfString:@"7"].location == NSNotFound))
    {
        return @"--...";
    }
    else if (!([letter rangeOfString:@"8"].location == NSNotFound))
    {
        return @"---..";
    }
    else if (!([letter rangeOfString:@"9"].location == NSNotFound))
    {
        return @"----.";
    }
    else if (!([letter rangeOfString:@"0"].location == NSNotFound))
    {
        return @"-----";
    }
    return letter;
}

+ (BOOL) isAlphaNumeric:(NSString *)string //Checks for alphanumericity
{
    NSMutableCharacterSet *mySet = [NSMutableCharacterSet characterSetWithCharactersInString:@" "];
    [mySet formUnionWithCharacterSet:[NSCharacterSet alphanumericCharacterSet]];
    NSCharacterSet *dumbCharacters =[mySet invertedSet];
    return ([string rangeOfCharacterFromSet:dumbCharacters].location == NSNotFound);
}

@end
