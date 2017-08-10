import PlaygroundSupport
import UIKit
import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    
    var newDigits = digits

    for (index, value) in digits.enumerated().reversed() {

        if value < 9 {
            newDigits[index] = value + 1

            return newDigits
        }
        newDigits[index] = 0

    }
    
    var newNumber = [Int]()
    
    for i in 0...digits.count {
        if i == 0 {
            newNumber.append(1)
        } else {
            newNumber.append(0)
        }
    }
    return newNumber
}

print(plusOne([9,9]))
