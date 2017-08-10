//: [Previous](@previous)

import Foundation

func isPossible(a: Int, b: Int, c: Int, d: Int) -> String {

    return helper(a: a, b: b, c: c, d: d) ? "Yes" : "No"
}

func helper(a: Int, b: Int, c: Int, d: Int) -> Bool {
    
    if a == c && b == d {
        return true
    }
    
    if a <= c && b <= d {
        return helper(a: a+b, b: b, c: c, d: d) || helper(a: a, b: a+b, c: c, d: d)
    }

    return false
}

print(isPossible(a: 1, b: 4, c: 5, d: 9))