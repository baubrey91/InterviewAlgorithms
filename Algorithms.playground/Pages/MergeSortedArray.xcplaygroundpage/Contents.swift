//: [Previous](@previous)

import Foundation

var array1 = [1,4,6,9]
let array2 = [1,5,7]

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    var i = m - 1
    var j = n - 1
    var k = m + n - 1
    
    while i >= 0 && j >= 0 {
        print(i)
        if nums1[i] > nums2[j] {
            print(nums1[3])
            nums1[k] = nums1[i]
            k -= 1
            i -= 1
        } else {
            //print(i)
            nums1[k] = nums2[j]
            k -= 1
            j -= 1
        }
    }
    
    while j >= 0 {
        nums1[k] = nums2[j]
        k -= 1
        j -= 1
    }
}

merge(&array1, array1.count, array2, array2.count)