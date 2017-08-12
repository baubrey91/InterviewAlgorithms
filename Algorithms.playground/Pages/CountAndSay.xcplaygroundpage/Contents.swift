//: [Previous](@previous)

import Foundation

//1. 1
//2. 11
//3. 21
//4. 1211
//5. 111221
//6. 312211
//7. 13112221
//8. 1112213211

private extension String {
    subscript (index: Int) -> Character {
        return self[self.characters.index(self.startIndex, offsetBy: index)]
    }
}

func countAndSay(_ n: Int) -> String {
    var result: String = "1"
    for _ in 0 ..< n {
        let previous: String = result
        result = ""
        var counter = 1
        var say: Character = previous[0]
        for j in 1..<previous.characters.count {
            if previous[j] != say {
                result = "\(result)\(counter)\(say)"
                counter = 1
                say = previous[j]
            } else {
                counter += 1
            }
        }
        result = "\(result)\(counter)\(say)"
    }
    return result
}

countAndSay(4)

