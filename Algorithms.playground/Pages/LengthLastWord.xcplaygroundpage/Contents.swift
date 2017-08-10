//: [Previous](@previous)

import Foundation

func lengthOfLastWord(_ s: String) -> Int {
    let trimmed = s.trimmingCharacters(in: .whitespacesAndNewlines)
    var count = 0
    for c in trimmed.characters.reversed() {
        if c == " " {
            break
        }
        count += 1
    }
    return count
}

let string = "a "

lengthOfLastWord(string)