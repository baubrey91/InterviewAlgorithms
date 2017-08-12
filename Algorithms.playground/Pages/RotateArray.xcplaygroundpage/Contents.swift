//: [Previous](@previous)

import Foundation

var input = [1,2,3,4]

func rotate(_ nums: inout [Int], _ k: Int) {
    /*let subArray = nums[0...k]
    nums += subArray
    for i in 0...k {
        nums.removeFirst()
    }*/
    var shift = k % nums.count
    shift = nums.count - shift
    let firstHalf = Array(nums[0..<shift])
    let secondHalf = Array(nums[shift..<nums.count])
    nums = secondHalf + firstHalf
}

rotate(&input, 1)

1 % 2