//
//  main.m
//  StringScoreProject
//
//  Created by Amanda Wixted on 6/2/16.
//  Copyright © 2016 Amanda Wixted. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+LevenshteinDistance.h"

void print(NSString *s1, NSString *s2)
{
    float v = [s1 levenshteinDistanceFromString:s2];
    NSLog(@"%f\n%@\n%@", v, s1, s2);
}

void runLevenshteinDistance()
{
    NSString *s1 = @"int main(int s, const char * argv[]) {";
    NSString *s2 = @"       int main(int ss, const char * argv[]) {";
    NSString *rainbow = @"🌈";
    NSString *rainbowUnicorn = @"🌈🦄";
    NSString *hangul = @"한글";
    NSString *chakul = @"자글";
    
    
    print(s1, s1);
    print(s1, s2);
    print(s2, s1);
    print(rainbow, rainbowUnicorn);
    print(hangul, chakul);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        runLevenshteinDistance();
    }
    return 0;
}
