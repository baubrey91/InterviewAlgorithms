//: [Previous](@previous)

import Foundation

func isNumber(_ s: String) -> Bool {
    
    if let number = Double(s.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return true
    } else {
        var e = 0
        var i: String.Index?
        for (index, value) in s.characters.enumerated() {
            if value == "e" {
                e += 1
                i = index
            }
        }
        if e > 1 {
            return false
        }
        
        return isNumber(s.remove(at: i))
    }
}

isNumber("078332e437")