//: [Previous](@previous)

import Foundation

var dic = [String:Int]()

func findNumberOfPaths(height: Int, width: Int) -> Int {
    if height == 1 || width == 1 {
        return 1
    }
    
    let matrixDimensions = String(height) + "," + String(width)
    let matrixDimensions2 = String(width) + "," + String(height)
    
    var totalPaths: Int
    
    if let v = dic[matrixDimensions] {
        totalPaths = v
    } else {
        totalPaths = findNumberOfPaths(height: height - 1, width: width) + findNumberOfPaths(height: height, width: width - 1)
        dic[matrixDimensions] = totalPaths
        dic[matrixDimensions2] = totalPaths
    }
    return totalPaths
}

findNumberOfPaths(height: 4, width: 4)
