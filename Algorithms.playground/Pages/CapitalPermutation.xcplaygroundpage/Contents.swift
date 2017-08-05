//: [Previous](@previous)

import Foundation

var permutations = [String]()

func permuteCapitals(s: String) {
    permuteCapitals(input: s.lowercased(), output: "")
    return permutations

}

func permuteCapitals(input: String, output: String) {
    if input.characters.count == 0 && output.characters.count != 0 {
        permutations.append(output)
    } else {
        //1 to end      0 to 1
        let index1 = input.index(str.startIndex, offsetBy: input.index(1))

        let index2 = input.index(str.startIndex, offsetBy: 1)
        permuteCapitals(input: input.substring(from: <#T##String.Index#>) output: output + input.sub)
        //1 to end      0 to 1. upercased
        permuteCapitals(input: input.substring(from: <#T##String.Index#>) output: output + )
    }
}
