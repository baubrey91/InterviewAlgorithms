//: [Previous](@previous)

import Foundation

class BSTNode {
    let value: Int
    var leftChild: BSTNode?
    var rightChild: BSTNode?
    init(value: Int, leftChild: BSTNode?, rightChild: BSTNode?) {
        self.value = value
        self.leftChild = leftChild
    }
}

func inorderTraversal(head: BSTNode?) -> [Int] {
    var result = [Int]()
    var stack = [BSTNode]()
    
    if head == nil {
        return result
    }

    var node = head
    while !stack.isEmpty || node != nil {
        if node != nil {
            stack.append(node!)
            node = node!.leftChild
        } else {
            node = stack.removeLast()
            result.append(node!.value)
            node = node!.rightChild
        }
    }
    return result
}

var node4 = BSTNode(value: 1, leftChild: nil, rightChild: nil)
var node3 = BSTNode(value: 2, leftChild: nil, rightChild: node4)
var node2 = BSTNode(value: 3, leftChild: nil, rightChild: nil)
var node1 = BSTNode(value: 4, leftChild: node3, rightChild: nil)
var root = BSTNode(value: 5, leftChild: node1, rightChild: node2)

inorderTraversal(head: root)