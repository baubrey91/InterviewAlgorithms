//: Playground - noun: a place where people can play

import Foundation


func palidrome(input: String) -> Bool {
    
    //Regex
    let charSet = NSCharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz0123456789").inverted
    let s = input.lowercased().components(separatedBy: charSet).joined(separator: "")
    
    //Check if empty
    if s == "" {
        return false
    }
    
    for i in 0..<s.characters.count / 2 {
        let startIndex = s.index(s.startIndex, offsetBy: i)
        let endIndex = s.index(s.endIndex, offsetBy: -i - 1)
        
        if s[startIndex] != s[endIndex] {
            return false
        }
    }
    return true
    
    //alternatively
    //return s == s.characters.reversed()
}

palidrome(input: "0P")

func isPalindrome(_ s: String) -> Bool {
    
    return s == String(s.characters.reversed())
}