//: [Previous](@previous)

import Foundation


var myArray = [3,2,2,3]

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
 
    var count = 0
    for (index, value) in nums.enumerated() {
        if value == val {
            nums.remove(at: index - count)
            count += 1
        }
    }
    
    return nums.count
}

removeElement(&myArray, 3)
print(myArray)