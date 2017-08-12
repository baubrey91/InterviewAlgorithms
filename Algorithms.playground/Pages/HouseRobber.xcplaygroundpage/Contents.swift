//: [Previous](@previous)

import Foundation

func rob(_ nums: [Int]) -> Int {
    
    var res1 = 0
    var res2 = 0
    
    for (index, value) in nums.enumerated() {
        if index % 2 == 0 {
            res1 += value
            res1 = (res1 > res2) ? res1 : res2
        } else {
            res2 += value
            res2 = (res1 > res2) ? res1 : res2
        }
    }
    return max(res1, res2)
}

rob([2,1,1,2])
