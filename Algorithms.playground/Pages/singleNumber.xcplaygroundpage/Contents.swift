//: [Previous](@previous)

import Foundation

let nums = [1,2,3,4,5,6,1,3,4,5,6]

func singleNumber(_ nums: [Int]) -> Int {
    var result = 0
    
    for num in nums {
        result = result ^ num
        
    }
    return result
    
}

singleNumber(nums)