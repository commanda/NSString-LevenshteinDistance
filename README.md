# NSString-LevenshteinDistance

Uses the Levenshtein Distance algorithm (https://en.wikipedia.org/wiki/Levenshtein_distance) to calculate the edit distance between two NSStrings. Based on https://gist.github.com/wewearglasses/1593632.

Usage:

`[@"한글" levenshteinDistanceFromString:@"자글"];`

Note: emoji characters are treated as length 2, so `[@"🌈" levenshteinDistanceFromString:@"🌈🦄"]` returns an edit distance of 2.
