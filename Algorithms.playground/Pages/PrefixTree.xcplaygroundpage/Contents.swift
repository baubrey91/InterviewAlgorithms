//: [Previous](@previous)

import Foundation

class TrieNode<T: Hashable> {
    var value: T?
    weak var parent: TrieNode?
    var children: [T: TrieNode] = [:]
    var isTerminating = false
    
    init(value: T? = nil, parent: TrieNode? = nil) {
        self.value = value
        self.parent = parent
    }
    
    func add(child: T) {
        guard children[child] == nil else { return }
        
        children[child] = TrieNode(value: child, parent: self)
    }
}

class Trie {
    typealias Node = TrieNode<Character>
    
    fileprivate let root: Node
    
    init() {
        root = Node()
    }
}

extension Trie {
    func insert(word: String) {
        
        guard !word.isEmpty else { return }
        
        var currentNode = root
        
        let characters = Array(word.lowercased().characters)
        var currentIndex = 0
        
        while currentIndex < characters.count {
            let character = characters[currentIndex]
            
            if let child = currentNode.children[character] {
                currentNode = child
            } else {
                currentNode.add(child: character)
                currentNode = currentNode.children[character]!
            }
            
            currentIndex += 1
            
            if currentIndex == characters.count {
                currentNode.isTerminating = true
            }
        }
    }
    
    func contains(word: String) -> Bool {
        guard !word.isEmpty else { return false }
        var currentNode = root
        
        let characters = Array(word.lowercased().characters)
        var currentIndex = 0
        
        while currentIndex < characters.count, let child = currentNode.children[characters[currentIndex]] {
            currentIndex += 1
            currentNode = child
        }
        
        if currentIndex ==  characters.count && currentNode.isTerminating {
            return true
        } else {
            return false
        }
    }
    
    func autoComplete(word: String) -> [String] {
        return ["In process"]
    }
}

var keywords = ["butter", "tax", "bushes", "quirky", "drunk", "empty", "remember", "man", "swift", "prevent", "political", "toothsome", "erect", "wren", "groovy", "sick", "race", "deliver", "third", "linen", "rings", "whispering", "giant", "contain", "flight", "scarecrow", "receipt", "visitor", "trick", "bat"]

let trie = Trie()
for k in keywords {
    trie.insert(word: k)
}

trie.contains(word: "butte")

//: [Next](@next)
