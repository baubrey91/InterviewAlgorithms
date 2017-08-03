//: [Previous](@previous)

import Foundation

class Node {
    let value: Int
    var next: Node?
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

var threeNode = Node(value: 3, next: nil)
var twoNode = Node(value: 2, next: threeNode)
var oneNode = Node(value: 1, next: twoNode)

func printList(head: Node?) {
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? 0)
        currentNode = currentNode?.next
    }
}

func reverseList(head: Node?) -> Node? {
    
    var currentNode = head
    var prev: Node?
    var temp: Node?
    
    while currentNode != nil {
        temp = currentNode?.next
        currentNode?.next = prev
        prev = currentNode
        currentNode = temp
    }
    
    return prev
}

printList(head: oneNode)

printList(head: reverseList(head: oneNode))
