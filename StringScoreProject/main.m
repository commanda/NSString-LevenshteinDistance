//
//  main.m
//  StringScoreProject
//
//  Created by Amanda Wixted on 6/2/16.
//  Copyright © 2016 Amanda Wixted. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Score.h"
#import "NSString+LevenshteinDistance.h"




void runLevenshteinDistance()
{
    NSString *s1 = @"int main(int argc, const char * argv[]) {";
    NSString *s2 = @"       int main(int argc, const char * argv[]) {";
    
    NSLog(@"%f %@ %@", [s1 levenshteinDistanceFromString:s1], s1, s1);
    
    NSLog(@"%f %@ %@", [s1 levenshteinDistanceFromString:s2], s1, s2);
    
    NSLog(@"%f %@ %@", [s2 levenshteinDistanceFromString:s1], s2, s1);
}

void runStringScore()
{
    NSString *s1 = @"Hello World!";
    NSString *s2 = @"Hello sdf World!";
    
    NSLog(@"%f [%@] scoreAgainst: [%@]", [s1 scoreAgainst:s1], s1, s1);
    NSLog(@"%f [%@] scoreAgainst: [%@]", [s1 scoreAgainst:s2], s1, s2);
    NSLog(@"%f [%@] scoreAgainst: [%@]", [s2 scoreAgainst:s1], s2, s1);
    
    
    NSNumber *fuzziness = @0.0;
    NSLog(@"%f [%@] scoreAgainst:fuzziness:%@ [%@]", [s1 scoreAgainst:s2 fuzziness:fuzziness], fuzziness, s1, s2);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //runStringScore();
        runLevenshteinDistance();
    }
    return 0;
}
