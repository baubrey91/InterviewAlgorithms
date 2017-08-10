//: [Previous](@previous)

import Foundation

func pascalTriangle(k: Int) -> Void {
    var results = [[Int]]()
    if k == 0 {
        return
    }
    for i in 0..<k {
        var currentResults = [Int]()

        for j in 0...i {
            if (i > 1 && j > 0 && j < i) {
                let value = results[i-1][j] + results[i-1][j-1]
                currentResults.append(value)
            } else {
                currentResults.append(1)
            }
        }
        results.append(currentResults)
    }
    for r1 in results {
        for r2 in r1 {
            print(("\(r2) "), terminator: "")
        }
        print("")
    }
}



pascalTriangle(k: 5)