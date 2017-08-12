//: [Previous](@previous)

import Foundation

var island = [[0,1,0,0],
              [1,1,1,0],
              [0,1,0,0],
              [1,1,0,0]]

func islandPerimeter(_ grid: [[Int]]) -> Int {

    var dic = [Int: Int]()
    var result = 0
    
    for (i, value) in grid.enumerated() {
        for (j, values) in value.enumerated() {
            if values == 1 {
                if j == 0 || grid[i][j - 1] == 0  {
                    result += 1
                }
                if i == 0 || grid[i - 1][j] == 0  {
                    result += 1
                }
                if j == value.count - 1 || grid[i][j + 1] == 0  {
                    result += 1
                }
                if i == grid.count - 1 || grid[i + 1][j] == 0  {
                    result += 1
                }
            }
        }
    }
    
    return result
}

islandPerimeter(island)
