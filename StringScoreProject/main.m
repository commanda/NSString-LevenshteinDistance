//
//  main.m
//  StringScoreProject
//
//  Created by Amanda Wixted on 6/2/16.
//  Copyright © 2016 Amanda Wixted. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+LevenshteinDistance.h"

void runLevenshteinDistance()
{
    NSString *s1 = @"int main(int argc, const char * argv[]) {";
    NSString *s2 = @"       pnt main(int argc, const char * argv[]) {";
    
    NSLog(@"%f %@ %@", [s1 levenshteinDistanceFromString:s1], s1, s1);
    
    NSLog(@"%f %@ %@", [s1 levenshteinDistanceFromString:s2], s1, s2);
    
    NSLog(@"%f %@ %@", [s2 levenshteinDistanceFromString:s1], s2, s1);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        runLevenshteinDistance();
    }
    return 0;
}
