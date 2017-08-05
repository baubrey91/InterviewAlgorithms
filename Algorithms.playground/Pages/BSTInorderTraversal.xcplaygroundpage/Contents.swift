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
   /* var result = [Int]()
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
    return result*/
    
    var root = head
    var arr = [Int]()
    var i: Int = 0
    while(true) {
        if root?.leftChild != nil {
            var current = root?.leftChild
            while current?.rightChild != nil {
                current = current?.rightChild
            }
            current?.rightChild = root
            var temp = root
            root = root?.leftChild
            temp?.leftChild = nil
        } else {
            arr.append((root?.value)!)
            i += 1
            root = root?.rightChild
        }
        if root == nil {
            break
        }
    }
    return arr
}

var node4 = BSTNode(value: 4, leftChild: nil, rightChild: nil)
var node3 = BSTNode(value: 3, leftChild: nil, rightChild: nil)
var node2 = BSTNode(value: 2, leftChild: node3, rightChild: nil)
var node1 = BSTNode(value: 1, leftChild: node3, rightChild: nil)
var root = BSTNode(value: 99, leftChild: nil, rightChild: node2)

print(inorderTraversal(head: root))
