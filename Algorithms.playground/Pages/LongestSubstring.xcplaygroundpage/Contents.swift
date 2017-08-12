//: [Previous](@previous)

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    
    var result = ""
    
    for (index, value) in s.characters.enumerated() {
        if result.characters.first != value {
            result += String(describing: value)
        } else {
            for c in result.characters {
                
                if s[index] == c {
                    print(value)
                    index += 1
                }
            }
        }
    }
    
    return 1
    
}

lengthOfLongestSubstring("abcabcbb")
lengthOfLongestSubstring("bbbbb")
lengthOfLongestSubstring("pwwkew")