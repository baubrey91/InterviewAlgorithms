//: [Previous](@previous)

import Foundation


var count = 0

func climbStairs(_ n: Int) -> Int {
    if n == 2 {
        return 2
    }
    var a = 0
    var b = 1
    var t = 1
    
    for _ in 0..<n {
        a = b
        b = t
        t = a + b
    }
    
    return b
}


print(climbStairs(3))