//: [Previous](@previous)

import Foundation

func anagram(arr: [String]) -> [[Int]] {
    
    var result = [[Int]]()
    var dic = [String: Int]()
    
    for (index, i) in arr.enumerated() {
        let s = String(i.characters.sorted())
        
        if let val = dic[s] {
            let newArr:[Int] = [val, index]
            result.append(newArr)
        } else {
            dic[s] = index
        }
    }
    return result
}

anagram(arr: ["cat", "dog", "dog", "tca"])

func anagram(s1: String, s2: String) {
    return (s1.characters.sorted() == s2.characters.sorted()) ? true : false
    
}
