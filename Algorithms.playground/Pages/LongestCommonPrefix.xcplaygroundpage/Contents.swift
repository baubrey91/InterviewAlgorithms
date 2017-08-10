//: [Previous](@previous)

import Foundation

extension String {
    
    var length: Int {
        return self.characters.count
    }
    
    subscript (i: Int) -> String {
        return self[Range(i ..< i + 1)]
    }
    
    func substring(from: Int) -> String {
        return self[Range(min(from, length) ..< length)]
    }
    
    func substring(to: Int) -> String {
        return self[Range(0 ..< max(0, to))]
    }
    
    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return self[Range(start ..< end)]
    }
    
}

let strs = ["hello", "king", "kiss", "kite", "h"]

func longestCommonPrefix(_ strs: [String]) -> String {
    
    var s: String?          //Find the shortest string
    var length = Int.max    //Shortest string's length
    
    for str in strs {
        if str.characters.count < length {
            length = str.characters.count
            s = str
        }
    }
    
    if var s = s {
        var endIndex = s.endIndex
        for str in strs {
            while !s.isEmpty && !str.hasPrefix(s) {
                endIndex = s.index(before: endIndex)
                s = s.substring(to: endIndex)
            }
        }
        return s
    } else {
        return ""
    }
}


print(longestCommonPrefix(strs))

