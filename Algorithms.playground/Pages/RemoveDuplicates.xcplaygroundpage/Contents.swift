//: [Previous](@previous)

import Foundation


var nums = [1,1,2]

func removeDuplicates(_ nums: inout [Int]) -> Int {

    var i = 0
    for (index, value) in nums.enumerated() {
        if value != nums.last {
            if nums[index + 1] != nums.index(nums.startIndex, offsetBy: i)  {
                i += 1
                nums[nums.index(nums.startIndex, offsetBy: i)] = value
            }
        }
    }
    
    return i + 1
}

removeDuplicates(&nums)
print(nums)