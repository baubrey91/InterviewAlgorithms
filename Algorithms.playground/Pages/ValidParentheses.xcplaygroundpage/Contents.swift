//: [Previous](@previous)

import Foundation

func isValid(_ s: String) -> Bool {
    
    var valid = true
    
    var myStack = [Character]()
    for c in s.characters {
        switch c {
        case ")":
            if myStack.last == "(" {
                myStack.popLast()
            } else {
                valid = false
            }
        case "}":
            if myStack.last == "{" {
                myStack.popLast()
            } else {
                valid = false
            }
            
        case "]":
            if myStack.last == "[" {
                myStack.popLast()
            } else {
                valid = false
            }
        case "(":
            myStack.append("(")
        case "{":
            myStack.append("{")
        case "[":
            myStack.append("[")
        default:
            break
        }
    }
    if myStack.count > 0 {
        valid = false
    }
return valid
}

print(isValid("([))"))

func printThis(s: String) {
    for (i,j) in s.characters.enumerated() {
        print(i+1)
        print(j)
    }
}

printThis(s: "hello world")