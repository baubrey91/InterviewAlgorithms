//: [Previous](@previous)

import Foundation

func maxArea(_ height: [Int]) -> Int {
    
    var left = 0
    var right = height.count - 1
    var area = min(height[left], height[right]) * (right - left)
    
    while (left < right) {
        area = max(area, min(height[left], height[right]) * (right - left))
        if (height[left] < height[right]) {
            left += 1
        } else {
            right -= 1
        }
    }
    return area
    
}
