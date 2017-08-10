//: [Previous](@previous)

import Foundation

func romanCharToInt(_ c: Character) -> Int {
    var res = 0
    
    switch(c) {
    case "I": res = 1
    case "V": res = 5
    case "X": res = 10
    case "L": res = 50
    case "C": res = 100
    case "D": res = 500
    case "M": res = 1000
    default: res = 0
    }
    return res
}

func romanToInt(_ s: String) -> Int {
    
    var total = 0
    var string = s
    for i in 0..<string.characters.count {
        let index = string.index(string.startIndex, offsetBy: i)
        let nextIndex = string.index(string.startIndex, offsetBy: i+1)

        if i < (string.characters.count - 1) && romanCharToInt(string[index]) < romanCharToInt(string[nextIndex]) {
            total = total - romanCharToInt(string[index])
        } else {
            total = total + romanCharToInt(string[index])
        }
    }
 
    return total
}


romanToInt("XIV")