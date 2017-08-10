//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

let input = ["10", "4", "3"]

func counterGame(tests: [String]) -> Void {
    
    for i in tests {
        if let t = Double(i){
            var temp = t
            var reductions = 1
            while temp != 1 {
                if isPower(x: Double(temp)) {
                    temp /= Double(2)
                } else if !isPower(x: Double(temp)) {
                    temp -= largestPower(x: Double(temp))
                }
                reductions += 1
            }
            if (reductions % 2 == 0) {
                print("Louise")
            } else {
                print("Richard")
            }
        }
    }
}

func isPower(x: Double) -> Bool {
    var square = 1.00
    while x >= square {
        if x == square {
            return true
        }
        square = square * 2
    }
    return false
}

func largestPower(x: Double) -> Double{
    var res = 2.00
    while (res * 2) < x {
        res *= 2
    }
    return res
}

counterGame(tests: input)